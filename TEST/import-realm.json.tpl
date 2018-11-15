{% macro render_list(data) -%}
    {% for item in data %}
        "{{ item }}"{{ "," if not loop.last }}
    {% endfor %}
{% endmacro %}

{
  "id": "{{ REALM_NAME }}",
  "realm": "{{ REALM_NAME }}",
  "notBefore": 0,
  "revokeRefreshToken": false,
  "refreshTokenMaxReuse": 0,
  "accessTokenLifespan": 300,
  "accessTokenLifespanForImplicitFlow": 900,
  "ssoSessionIdleTimeout": 1800,
  "ssoSessionMaxLifespan": 36000,
  "offlineSessionIdleTimeout": 2592000,
  "offlineSessionMaxLifespanEnabled": false,
  "offlineSessionMaxLifespan": 5184000,
  "accessCodeLifespan": 60,
  "accessCodeLifespanUserAction": 300,
  "accessCodeLifespanLogin": 1800,
  "actionTokenGeneratedByAdminLifespan": 43200,
  "actionTokenGeneratedByUserLifespan": 300,
  "enabled": true,
  "sslRequired": "external",
  "registrationAllowed": false,
  "registrationEmailAsUsername": false,
  "rememberMe": false,
  "verifyEmail": false,
  "loginWithEmailAllowed": true,
  "duplicateEmailsAllowed": false,
  "resetPasswordAllowed": false,
  "editUsernameAllowed": false,
  "bruteForceProtected": false,
  "permanentLockout": false,
  "maxFailureWaitSeconds": 900,
  "minimumQuickLoginWaitSeconds": 60,
  "waitIncrementSeconds": 60,
  "quickLoginCheckMilliSeconds": 1000,
  "maxDeltaTimeSeconds": 43200,
  "failureFactor": 30,
  "roles": {
    "realm": [
      {
        "id": "37aae11f-5e4d-43d3-9cc6-9f5c15555096",
        "name": "uma_authorization",
        "description": "${role_uma_authorization}",
        "composite": false,
        "clientRole": false,
        "containerId": "{{ REALM_NAME }}"
      },
      {
        "id": "f9118b08-0c50-40ee-9585-9558431e5a34",
        "name": "offline_access",
        "description": "${role_offline-access}",
        "composite": false,
        "clientRole": false,
        "containerId": "{{ REALM_NAME }}"
      }
    ],
    "client": {
      "realm-management": [
        {
          "id": "3ce43ca5-1aac-4d91-8ccb-07a64a2c309f",
          "name": "view-identity-providers",
          "description": "${role_view-identity-providers}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "a326fda5-3bcb-4710-a79d-4af75ac08dbc",
          "name": "manage-clients",
          "description": "${role_manage-clients}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "d602c86d-3b9c-478c-8091-34754f44e337",
          "name": "impersonation",
          "description": "${role_impersonation}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "30b54479-455b-4e55-bada-b4ef887a03b6",
          "name": "create-client",
          "description": "${role_create-client}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "24e79116-ef3b-4f58-82c2-8b2be75cd7f8",
          "name": "manage-users",
          "description": "${role_manage-users}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "f8e5043e-8414-4671-8536-7e772d359392",
          "name": "manage-authorization",
          "description": "${role_manage-authorization}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "f408a102-fa28-4ab4-81a5-c7124f8e5696",
          "name": "query-realms",
          "description": "${role_query-realms}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "976e5f2e-ec55-402f-b800-8de083669d8d",
          "name": "manage-identity-providers",
          "description": "${role_manage-identity-providers}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "723649d1-945c-4451-a4e3-b8e9b422bb9d",
          "name": "view-events",
          "description": "${role_view-events}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "f3d59036-8341-4850-bce4-92c30ee42fca",
          "name": "manage-realm",
          "description": "${role_manage-realm}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "8018fec9-193c-4854-b38e-d4d5a19bf07b",
          "name": "query-clients",
          "description": "${role_query-clients}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "998a5a92-2531-44b7-9d35-0a826fa7249d",
          "name": "view-clients",
          "description": "${role_view-clients}",
          "composite": true,
          "composites": {
            "client": {
              "realm-management": [
                "query-clients"
              ]
            }
          },
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "ee34157a-1349-47fb-b97b-b99027f7e3b6",
          "name": "query-users",
          "description": "${role_query-users}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "fcedd687-a450-4979-888a-75354c667ff6",
          "name": "view-authorization",
          "description": "${role_view-authorization}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "69babe8a-edc8-44d3-9584-7f4e6f9ed71a",
          "name": "realm-admin",
          "description": "${role_realm-admin}",
          "composite": true,
          "composites": {
            "client": {
              "realm-management": [
                "view-identity-providers",
                "manage-clients",
                "impersonation",
                "create-client",
                "manage-users",
                "manage-authorization",
                "query-realms",
                "manage-identity-providers",
                "view-events",
                "manage-realm",
                "query-clients",
                "view-clients",
                "query-users",
                "view-authorization",
                "view-realm",
                "query-groups",
                "manage-events",
                "view-users"
              ]
            }
          },
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "1ade970b-b645-4b74-bb59-bb8c3ee13481",
          "name": "view-realm",
          "description": "${role_view-realm}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "1a7d3a9a-81c7-4640-8c98-9fd1ee73faa1",
          "name": "query-groups",
          "description": "${role_query-groups}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "80d02ea4-12ba-4b1e-b8e1-75aca55a6a3a",
          "name": "manage-events",
          "description": "${role_manage-events}",
          "composite": false,
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        },
        {
          "id": "2e810ba3-fa42-421f-ba35-6161f5abcbc0",
          "name": "view-users",
          "description": "${role_view-users}",
          "composite": true,
          "composites": {
            "client": {
              "realm-management": [
                "query-users",
                "query-groups"
              ]
            }
          },
          "clientRole": true,
          "containerId": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f"
        }
      ],
      "{{ CLIENT_NAME }}": [],
      "security-admin-console": [],
      "admin-cli": [],
      "broker": [
        {
          "id": "392112df-85f3-4434-92e7-3dd031dfa0fc",
          "name": "read-token",
          "description": "${role_read-token}",
          "composite": false,
          "clientRole": true,
          "containerId": "59df6f1e-1c72-4a96-ab0f-75e69805e566"
        }
      ],
      "account": [
        {
          "id": "3064f06b-d31e-45ec-babd-8cfd09e9e39a",
          "name": "view-profile",
          "description": "${role_view-profile}",
          "composite": false,
          "clientRole": true,
          "containerId": "d34979cd-1e11-49ee-bc36-0b4132282178"
        },
        {
          "id": "71ceb6b8-2dfa-40d3-b98c-acdab5c631b4",
          "name": "manage-account",
          "description": "${role_manage-account}",
          "composite": true,
          "composites": {
            "client": {
              "account": [
                "manage-account-links"
              ]
            }
          },
          "clientRole": true,
          "containerId": "d34979cd-1e11-49ee-bc36-0b4132282178"
        },
        {
          "id": "f84799de-9435-44bb-bc9d-3b4bcb7fd38c",
          "name": "manage-account-links",
          "description": "${role_manage-account-links}",
          "composite": false,
          "clientRole": true,
          "containerId": "d34979cd-1e11-49ee-bc36-0b4132282178"
        }
      ]
    }
  },
  "groups": [],
  "defaultRoles": [
    "offline_access",
    "uma_authorization"
  ],
  "requiredCredentials": [
    "password"
  ],
  "otpPolicyType": "totp",
  "otpPolicyAlgorithm": "HmacSHA1",
  "otpPolicyInitialCounter": 0,
  "otpPolicyDigits": 6,
  "otpPolicyLookAheadWindow": 1,
  "otpPolicyPeriod": 30,
  "otpSupportedApplications": [
    "FreeOTP",
    "Google Authenticator"
  ],
  "scopeMappings": [
    {
      "clientScope": "offline_access",
      "roles": [
        "offline_access"
      ]
    }
  ],
  "clients": [
    {
      "id": "59df6f1e-1c72-4a96-ab0f-75e69805e566",
      "clientId": "broker",
      "name": "${client_broker}",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "redirectUris": [],
      "webOrigins": [],
      "notBefore": 0,
      "bearerOnly": false,
      "consentRequired": false,
      "standardFlowEnabled": true,
      "implicitFlowEnabled": false,
      "directAccessGrantsEnabled": false,
      "serviceAccountsEnabled": false,
      "publicClient": false,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {},
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": false,
      "nodeReRegistrationTimeout": 0,
      "defaultClientScopes": [
        "role_list",
        "profile",
        "email"
      ],
      "optionalClientScopes": [
        "address",
        "phone",
        "offline_access"
      ]
    },
    {
      "id": "4f77933f-8421-4219-b559-4dfc29dbe81b",
      "clientId": "admin-cli",
      "name": "${client_admin-cli}",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "redirectUris": [],
      "webOrigins": [],
      "notBefore": 0,
      "bearerOnly": false,
      "consentRequired": false,
      "standardFlowEnabled": false,
      "implicitFlowEnabled": false,
      "directAccessGrantsEnabled": true,
      "serviceAccountsEnabled": false,
      "publicClient": true,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {},
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": false,
      "nodeReRegistrationTimeout": 0,
      "defaultClientScopes": [
        "role_list",
        "profile",
        "email"
      ],
      "optionalClientScopes": [
        "address",
        "phone",
        "offline_access"
      ]
    },
    {
      "id": "b44b52a3-4510-495c-9732-a32e6f38449f",
      "clientId": "security-admin-console",
      "name": "${client_security-admin-console}",
      "baseUrl": "/auth/admin/{{ REALM_NAME }}/console/index.html",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "redirectUris": [
        "/auth/admin/{{ REALM_NAME }}/console/*"
      ],
      "webOrigins": [],
      "notBefore": 0,
      "bearerOnly": false,
      "consentRequired": false,
      "standardFlowEnabled": true,
      "implicitFlowEnabled": false,
      "directAccessGrantsEnabled": false,
      "serviceAccountsEnabled": false,
      "publicClient": true,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {},
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": false,
      "nodeReRegistrationTimeout": 0,
      "protocolMappers": [
        {
          "id": "43e6ea2d-3d9c-45fe-b7fd-411e051d4009",
          "name": "locale",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "locale",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "locale",
            "jsonType.label": "String"
          }
        }
      ],
      "defaultClientScopes": [
        "role_list",
        "profile",
        "email"
      ],
      "optionalClientScopes": [
        "address",
        "phone",
        "offline_access"
      ]
    },
    {
      "id": "{{ CLIENT_NAME }}-uuid-e9w8",
      "clientId": "{{ CLIENT_NAME }}",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "redirectUris": [
        {{ render_list(CLIENT_REDIRECT_URIS) }}
      ],
      "webOrigins": [
        ""
      ],
      "notBefore": 0,
      "bearerOnly": false,
      "consentRequired": false,
      "standardFlowEnabled": true,
      "implicitFlowEnabled": false,
      "directAccessGrantsEnabled": true,
      "serviceAccountsEnabled": false,
      "publicClient": true,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {},
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": true,
      "nodeReRegistrationTimeout": -1,
      "defaultClientScopes": [
        "role_list",
        "profile",
        "email"
      ],
      "optionalClientScopes": [
        "address",
        "phone",
        "offline_access"
      ]
    },
    {
      "id": "2cbf580a-e5ab-40f2-82d3-42a60928ee5f",
      "clientId": "realm-management",
      "name": "${client_realm-management}",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "redirectUris": [],
      "webOrigins": [],
      "notBefore": 0,
      "bearerOnly": true,
      "consentRequired": false,
      "standardFlowEnabled": true,
      "implicitFlowEnabled": false,
      "directAccessGrantsEnabled": false,
      "serviceAccountsEnabled": false,
      "publicClient": false,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {},
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": false,
      "nodeReRegistrationTimeout": 0,
      "defaultClientScopes": [
        "role_list",
        "profile",
        "email"
      ],
      "optionalClientScopes": [
        "address",
        "phone",
        "offline_access"
      ]
    },
    {
      "id": "d34979cd-1e11-49ee-bc36-0b4132282178",
      "clientId": "account",
      "name": "${client_account}",
      "baseUrl": "/auth/realms/{{ REALM_NAME }}/account",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "defaultRoles": [
        "view-profile",
        "manage-account"
      ],
      "redirectUris": [
        "/auth/realms/{{ REALM_NAME }}/account/*"
      ],
      "webOrigins": [],
      "notBefore": 0,
      "bearerOnly": false,
      "consentRequired": false,
      "standardFlowEnabled": true,
      "implicitFlowEnabled": false,
      "directAccessGrantsEnabled": false,
      "serviceAccountsEnabled": false,
      "publicClient": false,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {},
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": false,
      "nodeReRegistrationTimeout": 0,
      "defaultClientScopes": [
        "role_list",
        "profile",
        "email"
      ],
      "optionalClientScopes": [
        "address",
        "phone",
        "offline_access"
      ]
    }
  ],
  "clientScopes": [
    {
      "id": "bfa0190d-8c60-4b6d-8bbb-3e489dfd6103",
      "name": "offline_access",
      "description": "OpenID Connect built-in scope: offline_access",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${offlineAccessScopeConsentText}",
        "display.on.consent.screen": "true"
      }
    },
    {
      "id": "4ffff005-8548-4a57-a24e-907c5c584bd5",
      "name": "role_list",
      "description": "SAML role list",
      "protocol": "saml",
      "attributes": {
        "consent.screen.text": "${samlRoleListScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "9cffe625-6ea7-4105-ada4-4888ee98b02f",
          "name": "role list",
          "protocol": "saml",
          "protocolMapper": "saml-role-list-mapper",
          "consentRequired": false,
          "config": {
            "single": "false",
            "attribute.nameformat": "Basic",
            "attribute.name": "Role"
          }
        }
      ]
    },
    {
      "id": "ce4f88c6-8fab-46f3-aa57-41691d3266f1",
      "name": "profile",
      "description": "OpenID Connect built-in scope: profile",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${profileScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "0fc5b777-89ef-4ffe-ba1b-b3931971d602",
          "name": "gender",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "gender",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "gender",
            "jsonType.label": "String"
          }
        },
        {
          "id": "b9b78e57-542b-40ad-af1b-cb7ef7184f5b",
          "name": "birthdate",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "birthdate",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "birthdate",
            "jsonType.label": "String"
          }
        },
        {
          "id": "d1a35d03-0910-4092-9008-32cb8cc51a93",
          "name": "updated at",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "updatedAt",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "updated_at",
            "jsonType.label": "String"
          }
        },
        {
          "id": "f5e7e519-8d07-4963-b2c4-a612d40ad422",
          "name": "middle name",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "middleName",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "middle_name",
            "jsonType.label": "String"
          }
        },
        {
          "id": "a6205ec3-81a3-46fb-bab7-362418d8c55d",
          "name": "profile",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "profile",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "profile",
            "jsonType.label": "String"
          }
        },
        {
          "id": "f9d59744-ef4c-4849-b57d-cec613fa926b",
          "name": "website",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "website",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "website",
            "jsonType.label": "String"
          }
        },
        {
          "id": "89e7958c-6d33-460e-a7fa-5d6344a2f63d",
          "name": "nickname",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "nickname",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "nickname",
            "jsonType.label": "String"
          }
        },
        {
          "id": "0380916b-6302-4b17-9dc2-2ab51a4dad84",
          "name": "picture",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "picture",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "picture",
            "jsonType.label": "String"
          }
        },
        {
          "id": "b507e524-1eee-4790-91e9-40f12c834bc3",
          "name": "zoneinfo",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "zoneinfo",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "zoneinfo",
            "jsonType.label": "String"
          }
        },
        {
          "id": "a8bd8c83-b671-4d85-8295-fd95fcdafb6d",
          "name": "given name",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-property-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "firstName",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "given_name",
            "jsonType.label": "String"
          }
        },
        {
          "id": "f0f4edaa-9f4a-465b-8cae-0e3b9cdfa516",
          "name": "locale",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "locale",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "locale",
            "jsonType.label": "String"
          }
        },
        {
          "id": "2188d11c-8de2-4ff6-8546-d740899c65a2",
          "name": "family name",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-property-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "lastName",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "family_name",
            "jsonType.label": "String"
          }
        },
        {
          "id": "35a06152-f69f-4926-a3d8-7921747ae3f8",
          "name": "username",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-property-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "username",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "preferred_username",
            "jsonType.label": "String"
          }
        },
        {
          "id": "7014fc31-2994-4d7a-825f-558061e65707",
          "name": "full name",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-full-name-mapper",
          "consentRequired": false,
          "config": {
            "id.token.claim": "true",
            "access.token.claim": "true",
            "userinfo.token.claim": "true"
          }
        }
      ]
    },
    {
      "id": "8249a20f-0ecf-4419-b11e-c6baddca1bc7",
      "name": "email",
      "description": "OpenID Connect built-in scope: email",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${emailScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "51e9ac86-4a3c-45b5-83a4-c62b5405d5d0",
          "name": "email",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-property-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "email",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "email",
            "jsonType.label": "String"
          }
        },
        {
          "id": "d80c9e41-41da-4c54-832b-7b0e054d6ae4",
          "name": "email verified",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-property-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "emailVerified",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "email_verified",
            "jsonType.label": "boolean"
          }
        }
      ]
    },
    {
      "id": "08fadf62-b651-40f1-b559-0d19c3e5ad20",
      "name": "address",
      "description": "OpenID Connect built-in scope: address",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${addressScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "b1f3c4df-8ec8-4c24-bf8b-3de1cb766013",
          "name": "address",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-address-mapper",
          "consentRequired": false,
          "config": {
            "user.attribute.formatted": "formatted",
            "user.attribute.country": "country",
            "user.attribute.postal_code": "postal_code",
            "userinfo.token.claim": "true",
            "user.attribute.street": "street",
            "id.token.claim": "true",
            "user.attribute.region": "region",
            "access.token.claim": "true",
            "user.attribute.locality": "locality"
          }
        }
      ]
    },
    {
      "id": "1b02bbbc-d0d3-430e-ac62-c00bff6def55",
      "name": "phone",
      "description": "OpenID Connect built-in scope: phone",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${phoneScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "a3e8e6de-835c-4bd2-bd96-71e69763fe58",
          "name": "phone number",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "phoneNumber",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "phone_number",
            "jsonType.label": "String"
          }
        },
        {
          "id": "d5988448-69c7-4c53-9daa-a8cd7e35a954",
          "name": "phone number verified",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usermodel-attribute-mapper",
          "consentRequired": false,
          "config": {
            "userinfo.token.claim": "true",
            "user.attribute": "phoneNumberVerified",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "phone_number_verified",
            "jsonType.label": "boolean"
          }
        }
      ]
    }
  ],
  "defaultDefaultClientScopes": [
    "role_list",
    "profile",
    "email"
  ],
  "defaultOptionalClientScopes": [
    "offline_access",
    "address",
    "phone"
  ],
  "browserSecurityHeaders": {
    "xContentTypeOptions": "nosniff",
    "xRobotsTag": "none",
    "xFrameOptions": "SAMEORIGIN",
    "xXSSProtection": "1; mode=block",
    "contentSecurityPolicy": "frame-src 'self'; frame-ancestors 'self'; object-src 'none';",
    "strictTransportSecurity": "max-age=31536000; includeSubDomains"
  },
  "smtpServer": {},
  "eventsEnabled": false,
  "eventsListeners": [
    {{ render_list(EVENTS_LISTENERS) }}
  ],
  "enabledEventTypes": [
    "SEND_RESET_PASSWORD",
    "UPDATE_TOTP",
    "REMOVE_TOTP",
    "REVOKE_GRANT",
    "LOGIN_ERROR",
    "CLIENT_LOGIN",
    "RESET_PASSWORD_ERROR",
    "IMPERSONATE_ERROR",
    "CODE_TO_TOKEN_ERROR",
    "CUSTOM_REQUIRED_ACTION",
    "RESTART_AUTHENTICATION",
    "UPDATE_PROFILE_ERROR",
    "IMPERSONATE",
    "LOGIN",
    "UPDATE_PASSWORD_ERROR",
    "CLIENT_INITIATED_ACCOUNT_LINKING",
    "TOKEN_EXCHANGE",
    "REGISTER",
    "LOGOUT",
    "CLIENT_REGISTER",
    "IDENTITY_PROVIDER_LINK_ACCOUNT",
    "UPDATE_PASSWORD",
    "FEDERATED_IDENTITY_LINK_ERROR",
    "CLIENT_DELETE",
    "IDENTITY_PROVIDER_FIRST_LOGIN",
    "VERIFY_EMAIL",
    "CLIENT_DELETE_ERROR",
    "CLIENT_LOGIN_ERROR",
    "RESTART_AUTHENTICATION_ERROR",
    "REMOVE_FEDERATED_IDENTITY_ERROR",
    "EXECUTE_ACTIONS",
    "TOKEN_EXCHANGE_ERROR",
    "PERMISSION_TOKEN",
    "SEND_IDENTITY_PROVIDER_LINK_ERROR",
    "EXECUTE_ACTION_TOKEN_ERROR",
    "SEND_VERIFY_EMAIL",
    "EXECUTE_ACTIONS_ERROR",
    "REMOVE_FEDERATED_IDENTITY",
    "IDENTITY_PROVIDER_POST_LOGIN",
    "IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR",
    "UPDATE_EMAIL",
    "REGISTER_ERROR",
    "REVOKE_GRANT_ERROR",
    "LOGOUT_ERROR",
    "UPDATE_EMAIL_ERROR",
    "EXECUTE_ACTION_TOKEN",
    "CLIENT_UPDATE_ERROR",
    "UPDATE_PROFILE",
    "FEDERATED_IDENTITY_LINK",
    "CLIENT_REGISTER_ERROR",
    "SEND_VERIFY_EMAIL_ERROR",
    "SEND_IDENTITY_PROVIDER_LINK",
    "RESET_PASSWORD",
    "CLIENT_INITIATED_ACCOUNT_LINKING_ERROR",
    "REMOVE_TOTP_ERROR",
    "VERIFY_EMAIL_ERROR",
    "SEND_RESET_PASSWORD_ERROR",
    "CLIENT_UPDATE",
    "IDENTITY_PROVIDER_POST_LOGIN_ERROR",
    "CUSTOM_REQUIRED_ACTION_ERROR",
    "UPDATE_TOTP_ERROR",
    "CODE_TO_TOKEN",
    "IDENTITY_PROVIDER_FIRST_LOGIN_ERROR"
  ],
  "adminEventsEnabled": false,
  "adminEventsDetailsEnabled": false,
  "components": {
    "org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy": [
      {
        "id": "90b2760a-d428-40e1-b856-9ae7b6761b8a",
        "name": "Max Clients Limit",
        "providerId": "max-clients",
        "subType": "anonymous",
        "subComponents": {},
        "config": {
          "max-clients": [
            "200"
          ]
        }
      },
      {
        "id": "d97a7f0f-7b94-4704-a6d0-3b85a26197df",
        "name": "Full Scope Disabled",
        "providerId": "scope",
        "subType": "anonymous",
        "subComponents": {},
        "config": {}
      },
      {
        "id": "ec8cfdc4-735f-460d-977c-13e7bfde6be2",
        "name": "Allowed Protocol Mapper Types",
        "providerId": "allowed-protocol-mappers",
        "subType": "authenticated",
        "subComponents": {},
        "config": {
          "allowed-protocol-mapper-types": [
            "oidc-usermodel-property-mapper",
            "oidc-sha256-pairwise-sub-mapper",
            "saml-user-attribute-mapper",
            "oidc-address-mapper",
            "saml-role-list-mapper",
            "saml-user-property-mapper",
            "oidc-usermodel-attribute-mapper",
            "oidc-full-name-mapper"
          ]
        }
      },
      {
        "id": "1c6492c8-6a6d-44d7-aeb9-44b32db2c43b",
        "name": "Allowed Client Scopes",
        "providerId": "allowed-client-templates",
        "subType": "anonymous",
        "subComponents": {},
        "config": {
          "allow-default-scopes": [
            "true"
          ]
        }
      },
      {
        "id": "a38455eb-7507-4f2f-a58c-9d0490622471",
        "name": "Allowed Client Scopes",
        "providerId": "allowed-client-templates",
        "subType": "authenticated",
        "subComponents": {},
        "config": {
          "allow-default-scopes": [
            "true"
          ]
        }
      },
      {
        "id": "33689393-8e1c-493e-815b-8229e34bd042",
        "name": "Trusted Hosts",
        "providerId": "trusted-hosts",
        "subType": "anonymous",
        "subComponents": {},
        "config": {
          "host-sending-registration-request-must-match": [
            "true"
          ],
          "client-uris-must-match": [
            "true"
          ]
        }
      },
      {
        "id": "9aafa9fc-01a1-45bc-b9cf-0d7ddcb4b2f0",
        "name": "Consent Required",
        "providerId": "consent-required",
        "subType": "anonymous",
        "subComponents": {},
        "config": {}
      },
      {
        "id": "50653434-f860-4f60-bd55-f000101bc976",
        "name": "Allowed Protocol Mapper Types",
        "providerId": "allowed-protocol-mappers",
        "subType": "anonymous",
        "subComponents": {},
        "config": {
          "allowed-protocol-mapper-types": [
            "oidc-address-mapper",
            "oidc-full-name-mapper",
            "oidc-sha256-pairwise-sub-mapper",
            "oidc-usermodel-attribute-mapper",
            "saml-role-list-mapper",
            "saml-user-attribute-mapper",
            "oidc-usermodel-property-mapper",
            "saml-user-property-mapper"
          ]
        }
      }
    ],

    {% if LDAP_ENABLED == true %}
    "org.keycloak.storage.UserStorageProvider": [
      {
        "id": "{{ LDAP_PROVIDER_NAME }}-uuid-e9w8",
        "name": "{{ LDAP_PROVIDER_NAME }}",
        "providerId": "{{ LDAP_PROVIDER_NAME }}",
        "subComponents": {
          "org.keycloak.storage.ldap.mappers.LDAPStorageMapper": [
            {
              "id": "ce85828c-4b3e-4ac2-bd3b-ff859746bfa7",
              "name": "first name",
              "providerId": "user-attribute-ldap-mapper",
              "subComponents": {},
              "config": {
                "ldap.attribute": [
                  "givenName"
                ],
                "is.mandatory.in.ldap": [
                  "true"
                ],
                "read.only": [
                  "true"
                ],
                "always.read.value.from.ldap": [
                  "true"
                ],
                "user.model.attribute": [
                  "firstName"
                ]
              }
            },
            {
              "id": "0a3de355-0f7b-4158-a280-24ab79567ce6",
              "name": "username",
              "providerId": "user-attribute-ldap-mapper",
              "subComponents": {},
              "config": {
                "ldap.attribute": [
                  "cn"
                ],
                "is.mandatory.in.ldap": [
                  "true"
                ],
                "always.read.value.from.ldap": [
                  "false"
                ],
                "read.only": [
                  "true"
                ],
                "user.model.attribute": [
                  "username"
                ]
              }
            },
            {
              "id": "7f311b12-abb9-4d7b-8b57-b39b8a8100c8",
              "name": "last name",
              "providerId": "user-attribute-ldap-mapper",
              "subComponents": {},
              "config": {
                "ldap.attribute": [
                  "sn"
                ],
                "is.mandatory.in.ldap": [
                  "true"
                ],
                "always.read.value.from.ldap": [
                  "true"
                ],
                "read.only": [
                  "true"
                ],
                "user.model.attribute": [
                  "lastName"
                ]
              }
            },
            {
              "id": "0f24cbc5-5529-457b-9187-6f77eb08f81f",
              "name": "modify date",
              "providerId": "user-attribute-ldap-mapper",
              "subComponents": {},
              "config": {
                "ldap.attribute": [
                  "whenChanged"
                ],
                "is.mandatory.in.ldap": [
                  "false"
                ],
                "read.only": [
                  "true"
                ],
                "always.read.value.from.ldap": [
                  "true"
                ],
                "user.model.attribute": [
                  "modifyTimestamp"
                ]
              }
            },
            {
              "id": "34b217fc-fe73-42cc-b58b-71b53745229c",
              "name": "email",
              "providerId": "user-attribute-ldap-mapper",
              "subComponents": {},
              "config": {
                "ldap.attribute": [
                  "mail"
                ],
                "is.mandatory.in.ldap": [
                  "false"
                ],
                "read.only": [
                  "true"
                ],
                "always.read.value.from.ldap": [
                  "false"
                ],
                "user.model.attribute": [
                  "email"
                ]
              }
            },
            {
              "id": "056b864e-6f48-4c50-a973-0aaa542d5f6c",
              "name": "creation date",
              "providerId": "user-attribute-ldap-mapper",
              "subComponents": {},
              "config": {
                "ldap.attribute": [
                  "whenCreated"
                ],
                "is.mandatory.in.ldap": [
                  "false"
                ],
                "always.read.value.from.ldap": [
                  "true"
                ],
                "read.only": [
                  "true"
                ],
                "user.model.attribute": [
                  "createTimestamp"
                ]
              }
            },
            {
              "id": "db0dff39-809b-47fa-bde3-c7165df538e7",
              "name": "MSAD account controls",
              "providerId": "msad-user-account-control-mapper",
              "subComponents": {},
              "config": {}
            }
          ]
        },
        "config": {
          "pagination": [
            "true"
          ],
          "fullSyncPeriod": [
            "{{ LDAP_FULL_SYNC_PERIOD }}"
          ],
          "connectionPooling": [
            "true"
          ],
          "usersDn": [
            "{{ LDAP_USER_DN }}"
          ],
          "cachePolicy": [
            "DEFAULT"
          ],
          "useKerberosForPasswordAuthentication": [
            "false"
          ],
          "importEnabled": [
            "true"
          ],
          "enabled": [
            "true"
          ],
          "changedSyncPeriod": [
            "{{ LDAP_CHANGED_USR_SYNC_PERIOD }}"
          ],
          "bindDn": [
            "{{ LDAP_BIND_DN }}"
          ],
          "bindCredential": [
            "{{ LDAP_BIND_CREDENTIALS }}"
          ],
          "usernameLDAPAttribute": [
            "cn"
          ],
          "lastSync": [
            "1542035461"
          ],
          "vendor": [
            "ad"
          ],
          "uuidLDAPAttribute": [
            "objectGUID"
          ],
          "allowKerberosAuthentication": [
            "false"
          ],
          "connectionUrl": [
            "{{ LDAP_CONN_URL }}"
          ],
          "syncRegistrations": [
            "false"
          ],
          "authType": [
            "simple"
          ],
          "debug": [
            "false"
          ],
          "searchScope": [
            "1"
          ],
          "useTruststoreSpi": [
            "ldapsOnly"
          ],
          "priority": [
            "0"
          ],
          "userObjectClasses": [
            "{{ LDAP_USER_OBJ_CLASSES }}"
          ],
          "rdnLDAPAttribute": [
            "cn"
          ],
          "editMode": [
            "{{ LDAP_EDIT_MODE }}"
          ],
          "validatePasswordPolicy": [
            "false"
          ],
          "batchSizeForSync": [
            "{{ LDAP_SYNC_BATCH_SIZE }}"
          ]
        }
      }
    ],
    {% endif %}

    "org.keycloak.keys.KeyProvider": [
      {
        "id": "d47bfe12-f43d-4ba7-a683-260a24414ad3",
        "name": "aes-generated",
        "providerId": "aes-generated",
        "subComponents": {},
        "config": {
          "priority": [
            "100"
          ]
        }
      },
      {
        "id": "7eb60928-5bde-409d-9362-e7ad590771bd",
        "name": "hmac-generated",
        "providerId": "hmac-generated",
        "subComponents": {},
        "config": {
          "priority": [
            "100"
          ]
        }
      },
      {
        "id": "bcf765b7-62cc-4358-ac41-bfefe40db51c",
        "name": "rsa-generated",
        "providerId": "rsa-generated",
        "subComponents": {},
        "config": {
          "priority": [
            "100"
          ]
        }
      }
    ]
  },
  "internationalizationEnabled": false,
  "supportedLocales": [],
  "authenticationFlows": [
    {
      "id": "bb3d2e99-eebf-446a-b3bc-08541b5c4ecc",
      "alias": "Handle Existing Account",
      "description": "Handle what to do if there is existing account with same email/username like authenticated identity provider",
      "providerId": "basic-flow",
      "topLevel": false,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "idp-confirm-link",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "idp-email-verification",
          "requirement": "ALTERNATIVE",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "requirement": "ALTERNATIVE",
          "priority": 30,
          "flowAlias": "Verify Existing Account by Re-authentication",
          "userSetupAllowed": false,
          "autheticatorFlow": true
        }
      ]
    },
    {
      "id": "cf524af6-9514-4a28-ba25-19cb5931b4ee",
      "alias": "Verify Existing Account by Re-authentication",
      "description": "Reauthentication of existing account",
      "providerId": "basic-flow",
      "topLevel": false,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "idp-username-password-form",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "auth-otp-form",
          "requirement": "OPTIONAL",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    },
    {
      "id": "3f654698-9ebd-437a-a4af-d11b14a9db8a",
      "alias": "browser",
      "description": "browser based authentication",
      "providerId": "basic-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "auth-cookie",
          "requirement": "ALTERNATIVE",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "auth-spnego",
          "requirement": "DISABLED",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "identity-provider-redirector",
          "requirement": "ALTERNATIVE",
          "priority": 25,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "requirement": "ALTERNATIVE",
          "priority": 30,
          "flowAlias": "forms",
          "userSetupAllowed": false,
          "autheticatorFlow": true
        }
      ]
    },
    {
      "id": "7c8dd133-10ed-4f1a-bbe6-389f9a639504",
      "alias": "clients",
      "description": "Base authentication for clients",
      "providerId": "client-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "client-secret",
          "requirement": "ALTERNATIVE",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "client-jwt",
          "requirement": "ALTERNATIVE",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "client-secret-jwt",
          "requirement": "ALTERNATIVE",
          "priority": 30,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "client-x509",
          "requirement": "ALTERNATIVE",
          "priority": 40,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    },
    {
      "id": "0cdd1873-0e15-4653-82ad-a0142ada7b02",
      "alias": "direct grant",
      "description": "OpenID Connect Resource Owner Grant",
      "providerId": "basic-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "direct-grant-validate-username",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "direct-grant-validate-password",
          "requirement": "REQUIRED",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "direct-grant-validate-otp",
          "requirement": "OPTIONAL",
          "priority": 30,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    },
    {
      "id": "10113727-9ed6-4a08-ab6b-8781690c2d82",
      "alias": "docker auth",
      "description": "Used by Docker clients to authenticate against the IDP",
      "providerId": "basic-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "docker-http-basic-authenticator",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    },
    {
      "id": "d4d2bfb8-257d-4cc5-bd7f-d372f5b0b764",
      "alias": "first broker login",
      "description": "Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account",
      "providerId": "basic-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticatorConfig": "review profile config",
          "authenticator": "idp-review-profile",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticatorConfig": "create unique user config",
          "authenticator": "idp-create-user-if-unique",
          "requirement": "ALTERNATIVE",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "requirement": "ALTERNATIVE",
          "priority": 30,
          "flowAlias": "Handle Existing Account",
          "userSetupAllowed": false,
          "autheticatorFlow": true
        }
      ]
    },
    {
      "id": "4f55e874-0a0f-48bd-ac23-6466818bbd7d",
      "alias": "forms",
      "description": "Username, password, otp and other auth forms.",
      "providerId": "basic-flow",
      "topLevel": false,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "auth-username-password-form",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "auth-otp-form",
          "requirement": "OPTIONAL",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    },
    {
      "id": "c4a6988c-2479-479f-8f37-6c2d3aec3927",
      "alias": "registration",
      "description": "registration flow",
      "providerId": "basic-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "registration-page-form",
          "requirement": "REQUIRED",
          "priority": 10,
          "flowAlias": "registration form",
          "userSetupAllowed": false,
          "autheticatorFlow": true
        }
      ]
    },
    {
      "id": "7380c7b2-c7f3-4eea-900e-66fc049e0176",
      "alias": "registration form",
      "description": "registration form",
      "providerId": "form-flow",
      "topLevel": false,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "registration-user-creation",
          "requirement": "REQUIRED",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "registration-profile-action",
          "requirement": "REQUIRED",
          "priority": 40,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "registration-password-action",
          "requirement": "REQUIRED",
          "priority": 50,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "registration-recaptcha-action",
          "requirement": "DISABLED",
          "priority": 60,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    },
    {
      "id": "f3a3f8f1-33dd-4ed4-97c7-90293c9f5c57",
      "alias": "reset credentials",
      "description": "Reset credentials for a user if they forgot their password or something",
      "providerId": "basic-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "reset-credentials-choose-user",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "reset-credential-email",
          "requirement": "REQUIRED",
          "priority": 20,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "reset-password",
          "requirement": "REQUIRED",
          "priority": 30,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        },
        {
          "authenticator": "reset-otp",
          "requirement": "OPTIONAL",
          "priority": 40,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    },
    {
      "id": "c72b6171-81b5-43d5-a74f-ab4fc4889b46",
      "alias": "saml ecp",
      "description": "SAML ECP Profile Authentication Flow",
      "providerId": "basic-flow",
      "topLevel": true,
      "builtIn": true,
      "authenticationExecutions": [
        {
          "authenticator": "http-basic-authenticator",
          "requirement": "REQUIRED",
          "priority": 10,
          "userSetupAllowed": false,
          "autheticatorFlow": false
        }
      ]
    }
  ],
  "authenticatorConfig": [
    {
      "id": "68f1482b-b773-4454-b10d-9c15acb8a877",
      "alias": "create unique user config",
      "config": {
        "require.password.update.after.registration": "false"
      }
    },
    {
      "id": "f3dac92b-b6fc-4af0-ad9c-2a6b6caa816e",
      "alias": "review profile config",
      "config": {
        "update.profile.on.first.login": "missing"
      }
    }
  ],
  "requiredActions": [
    {
      "alias": "CONFIGURE_TOTP",
      "name": "Configure OTP",
      "providerId": "CONFIGURE_TOTP",
      "enabled": true,
      "defaultAction": false,
      "priority": 0,
      "config": {}
    },
    {
      "alias": "UPDATE_PASSWORD",
      "name": "Update Password",
      "providerId": "UPDATE_PASSWORD",
      "enabled": true,
      "defaultAction": false,
      "priority": 0,
      "config": {}
    },
    {
      "alias": "UPDATE_PROFILE",
      "name": "Update Profile",
      "providerId": "UPDATE_PROFILE",
      "enabled": true,
      "defaultAction": false,
      "priority": 0,
      "config": {}
    },
    {
      "alias": "VERIFY_EMAIL",
      "name": "Verify Email",
      "providerId": "VERIFY_EMAIL",
      "enabled": true,
      "defaultAction": false,
      "priority": 0,
      "config": {}
    },
    {
      "alias": "terms_and_conditions",
      "name": "Terms and Conditions",
      "providerId": "terms_and_conditions",
      "enabled": false,
      "defaultAction": false,
      "priority": 0,
      "config": {}
    }
  ],
  "browserFlow": "browser",
  "registrationFlow": "registration",
  "directGrantFlow": "direct grant",
  "resetCredentialsFlow": "reset credentials",
  "clientAuthenticationFlow": "clients",
  "dockerAuthenticationFlow": "docker auth",
  "attributes": {
    "_browser_header.xXSSProtection": "1; mode=block",
    "_browser_header.xFrameOptions": "SAMEORIGIN",
    "_browser_header.strictTransportSecurity": "max-age=31536000; includeSubDomains",
    "permanentLockout": "false",
    "quickLoginCheckMilliSeconds": "1000",
    "_browser_header.xRobotsTag": "none",
    "maxFailureWaitSeconds": "900",
    "minimumQuickLoginWaitSeconds": "60",
    "failureFactor": "30",
    "actionTokenGeneratedByUserLifespan": "300",
    "maxDeltaTimeSeconds": "43200",
    "_browser_header.xContentTypeOptions": "nosniff",
    "offlineSessionMaxLifespan": "5184000",
    "actionTokenGeneratedByAdminLifespan": "43200",
    "bruteForceProtected": "false",
    "_browser_header.contentSecurityPolicy": "frame-src 'self'; frame-ancestors 'self'; object-src 'none';",
    "waitIncrementSeconds": "60",
    "offlineSessionMaxLifespanEnabled": "false"
  },
  "keycloakVersion": "4.3.0.Final",
  "userManagedAccessAllowed": false
}
