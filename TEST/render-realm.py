import json
import os
from collections import OrderedDict
from operator import methodcaller
from jinja2 import Environment, FileSystemLoader

__author__ = "Ivan Stefko / Zoom International"
__email__ = "ivan.stefko@zoomint.com"


def get_data():
    try:
        # realm_init = "REALM_NAME: ZOOM-REALM | CLIENT_NAME: grafana | CLIENT_REDIRECT_URIS: [http://localhost:30888/*] | EVENTS_LISTENERS: [jboss-logging keycloak-event-provider] | LDAP_ENABLED: true | LDAP_PROVIDER_NAME: ldap | LDAP_EDIT_MODE: READ_ONLY | LDAP_USER_OBJ_CLASSES: person | LDAP_CONN_URL: ldap://192.168.110.202 | LDAP_USER_DN: OU=Prague,DC=testdomain,DC=cz | LDAP_BIND_DN: CN=administrator,CN=Users,DC=testdomain,DC=cz | LDAP_BIND_CREDENTIALS: zoomadmin | LDAP_SYNC_BATCH_SIZE: 1000 | LDAP_FULL_SYNC_PERIOD: 604800 | LDAP_CHANGED_USR_SYNC_PERIOD: 86400"

        # expecting REALM_INIT env variable set via keycloak helm chart (templates/statefulset.yaml chart)
        realm_init = os.environ['REALM_INIT']

    except KeyError as e:
        print("The Environment variable {} is not set. Please check templates/statefulset.yaml keycloak chart".format(e))

    tuples = map(methodcaller("strip"), realm_init.split('|'))
    data = {str(k).strip(): str(v).strip() for k, v in map(methodcaller("split", ":", 1), tuples)}

    convert_types(data)

    # print ">> {}".format(data)
    return data


def convert_types(d):
    """ Convert values to normal Boolean and List types due to all env variable comes as string """
    convert_booleans(d)
    convert_lists(d)


def convert_lists(d):
    """ '[one two]' -> ['one', 'two'] type of Python list """
    for k, v in d.items():
        if isinstance(v, basestring) and v.startswith('[') and v.endswith(']') and len(v) > 1:
            d[k] = v[1:-1].split()


def convert_booleans(d):
    """ 'true' -> True / 'false' -> False """
    for k, v in d.items():
        try:
            d[k] = json.loads(v.lower())
        except:
            pass


def render_template(template_path, template_name, data):
    j2_env = Environment(loader=FileSystemLoader(template_path))
    content = j2_env.get_template(template_name).render(**data)

    return content


def create_file(file_name, content):
    with open(file_name, 'w') as outfile:
        json.dump(json.loads(content, object_pairs_hook=OrderedDict), outfile, indent=4)


if __name__ == '__main__':
    data = get_data()

    # all these path must match with paths defined in Dockerfile
    content = render_template('/opt/jboss/keycloak/setup/templates/', 'import-realm.json.tpl', data)
    create_file('/opt/jboss/keycloak/setup/import-realm.json', content)


