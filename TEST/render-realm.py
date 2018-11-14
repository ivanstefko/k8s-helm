import json
import os
from collections import OrderedDict
from operator import methodcaller
from jinja2 import Environment, FileSystemLoader

# REALM_INIT="REALM_NAME:ZOOM REALM | LDAP_USER_DN :OU=Prague,DC=testdomain,DC=cz | REALM_ID:ZOOM-REALM-ID"
def get_data():
    try:
        realm_init = os.environ['REALM_INIT']
    except KeyError as e:
        print("The Environment variable {} is not set.".format(e))

    tuples = map(methodcaller("strip"), realm_init.split('|'))
    data = {str(k).strip(): str(v).strip() for k, v in map(methodcaller("split", ":"), tuples)}

    # print ">> {}".format(data)
    return data


def render_template(template_path, template_name, data):
    j2_env = Environment(loader=FileSystemLoader(template_path))
    content = j2_env.get_template(template_name).render(**data)

    return content


def create_file(file_name, content):
    with open(file_name, 'w') as outfile:
        json.dump(json.loads(content, object_pairs_hook=OrderedDict), outfile, indent=4)


data = get_data()
content = render_template('/opt/jboss/keycloak/setup/templates/', 'import-realm.json.tpl', data)
create_file('/opt/jboss/keycloak/setup/import-realm.json', content)







