{
  "id": "ZOOM",
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
        "id": "532e25b1-1592-4630-abe2-bcdd2306a296",
        "name": "offline_access",
        "description": "${role_offline-access}",
        "composite": false,
        "clientRole": false,
        "containerId": "ZOOM-TEST"
      },
      {
        "id": "b5be7b15-a47a-4cfd-8959-59e630dee92c",
        "name": "uma_authorization",
        "description": "${role_uma_authorization}",
        "composite": false,
        "clientRole": false,
        "containerId": "ZOOM-TEST"
      }
    ],
    "client": {
      "realm-management": [
        {
          "id": "fed5b473-ac8d-494e-8682-4e61aaf0dc66",
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
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "6a03827f-cdfa-419a-8a6a-fb629d1cd539",
          "name": "manage-realm",
          "description": "${role_manage-realm}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "ace81471-e06b-4c5c-adb0-d63989606106",
          "name": "query-users",
          "description": "${role_query-users}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "5854efaf-3174-45d6-a12f-8054bd4c3079",
          "name": "manage-authorization",
          "description": "${role_manage-authorization}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "de7de219-c65f-4d3e-94df-fbf120365146",
          "name": "query-realms",
          "description": "${role_query-realms}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "9f3d9b76-4957-4fd2-8c3e-95393e73375a",
          "name": "query-groups",
          "description": "${role_query-groups}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "c5eff22d-4ad4-4c92-b2cc-f1d5a8fb23c8",
          "name": "create-client",
          "description": "${role_create-client}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "54b2c228-f74a-4231-98de-af168349811a",
          "name": "impersonation",
          "description": "${role_impersonation}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "94e1e2e6-a2a7-42cd-bf09-9d7293ad6009",
          "name": "view-realm",
          "description": "${role_view-realm}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "f16ced7e-23d2-41f4-8e0d-5cf657ff98c4",
          "name": "manage-identity-providers",
          "description": "${role_manage-identity-providers}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "7c4f7127-2a36-4761-b910-b5a5c8e68e96",
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
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "5ac68b7d-b5e7-499a-aeb1-e27fed741301",
          "name": "view-identity-providers",
          "description": "${role_view-identity-providers}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "a3d53d10-b1dd-4f27-b628-9acd39a93613",
          "name": "manage-users",
          "description": "${role_manage-users}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "42ac9220-c317-4fd5-9ecb-60cdbe0ce59c",
          "name": "manage-events",
          "description": "${role_manage-events}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "a4bed670-1396-4f4b-8a48-2d4381bc1e94",
          "name": "view-authorization",
          "description": "${role_view-authorization}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "4af61633-486e-44e6-9186-fc9cbc303a7e",
          "name": "view-events",
          "description": "${role_view-events}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "c7996c9f-1b0a-4af9-ab77-a649b1c3077a",
          "name": "manage-clients",
          "description": "${role_manage-clients}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "57a7f068-144f-4b9b-9c71-7698561ded79",
          "name": "realm-admin",
          "description": "${role_realm-admin}",
          "composite": true,
          "composites": {
            "client": {
              "realm-management": [
                "manage-realm",
                "query-users",
                "view-clients",
                "manage-authorization",
                "query-realms",
                "query-groups",
                "create-client",
                "impersonation",
                "view-realm",
                "manage-identity-providers",
                "view-identity-providers",
                "view-users",
                "manage-users",
                "manage-events",
                "view-authorization",
                "view-events",
                "manage-clients",
                "query-clients"
              ]
            }
          },
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        },
        {
          "id": "270493a5-dce8-46c3-a19d-03447d5eacc6",
          "name": "query-clients",
          "description": "${role_query-clients}",
          "composite": false,
          "clientRole": true,
          "containerId": "5d7fd261-f6a7-4579-a3f8-aa3981b25394"
        }
      ],
      "the-best-app": [
        {
          "id": "35ba556f-fe6a-4ff2-8a79-9c147704b3d6",
          "name": "admin",
          "composite": false,
          "clientRole": true,
          "containerId": "d6f76967-1b69-4f40-ac81-b1f3c127cd30"
        }
      ],
      "security-admin-console": [],
      "admin-cli": [],
      "broker": [
        {
          "id": "518af466-15ab-4dc8-8f1d-16ccd218003e",
          "name": "read-token",
          "description": "${role_read-token}",
          "composite": false,
          "clientRole": true,
          "containerId": "9d3ef3db-4cc0-4953-990b-20ff3f96f0b9"
        }
      ],
      "account": [
        {
          "id": "180a6d5a-6dd2-429c-8750-84097878e1b8",
          "name": "view-profile",
          "description": "${role_view-profile}",
          "composite": false,
          "clientRole": true,
          "containerId": "8820c941-80ca-4de3-86a7-aadde1ea4c3c"
        },
        {
          "id": "080a1e68-d2fe-48bd-a654-cfc088760415",
          "name": "manage-account-links",
          "description": "${role_manage-account-links}",
          "composite": false,
          "clientRole": true,
          "containerId": "8820c941-80ca-4de3-86a7-aadde1ea4c3c"
        },
        {
          "id": "ac4343ab-5432-49d8-8c80-d74498b508f9",
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
          "containerId": "8820c941-80ca-4de3-86a7-aadde1ea4c3c"
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
      "id": "8820c941-80ca-4de3-86a7-aadde1ea4c3c",
      "clientId": "account",
      "name": "${client_account}",
      "baseUrl": "/auth/realms/ZOOM-TEST/account",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "defaultRoles": [
        "view-profile",
        "manage-account"
      ],
      "redirectUris": [
        "/auth/realms/ZOOM-TEST/account/*"
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
    },
    {
      "id": "9387abc7-a957-4e11-bfa9-4b911d9c5e0e",
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
      "serviceAccountsEnabled": true,
      "publicClient": false,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {
        "saml.assertion.signature": "false",
        "saml.force.post.binding": "false",
        "saml.multivalued.roles": "false",
        "saml.encrypt": "false",
        "saml.server.signature": "false",
        "saml.server.signature.keyinfo.ext": "false",
        "exclude.session.state.from.auth.response": "false",
        "saml_force_name_id_format": "false",
        "saml.client.signature": "false",
        "tls.client.certificate.bound.access.tokens": "false",
        "saml.authnstatement": "false",
        "display.on.consent.screen": "false",
        "saml.onetimeuse.condition": "false"
      },
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": false,
      "nodeReRegistrationTimeout": 0,
      "protocolMappers": [
        {
          "id": "bd268afc-898d-4e4e-ac54-2175fd9f230e",
          "name": "Client Host",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usersessionmodel-note-mapper",
          "consentRequired": false,
          "config": {
            "user.session.note": "clientHost",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "clientHost",
            "jsonType.label": "String"
          }
        },
        {
          "id": "81df8954-1400-4d4e-978d-bbaf7c7b3f0c",
          "name": "Client IP Address",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usersessionmodel-note-mapper",
          "consentRequired": false,
          "config": {
            "user.session.note": "clientAddress",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "clientAddress",
            "jsonType.label": "String"
          }
        },
        {
          "id": "170ea848-107a-48fe-aa61-81f3b27fa1a1",
          "name": "Client ID",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usersessionmodel-note-mapper",
          "consentRequired": false,
          "config": {
            "user.session.note": "clientId",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "clientId",
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
      "id": "9d3ef3db-4cc0-4953-990b-20ff3f96f0b9",
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
      "id": "5d7fd261-f6a7-4579-a3f8-aa3981b25394",
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
      "authorizationServicesEnabled": true,
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
      ],
      "authorizationSettings": {
        "allowRemoteResourceManagement": false,
        "policyEnforcementMode": "ENFORCING",
        "resources": [
          {
            "name": "role.resource.35ba556f-fe6a-4ff2-8a79-9c147704b3d6",
            "type": "Role",
            "ownerManagedAccess": false,
            "attributes": {},
            "_id": "080f96ad-323c-48c1-985e-07e5c8444269",
            "uris": [],
            "scopes": [
              {
                "name": "map-role-composite"
              },
              {
                "name": "map-role-client-scope"
              },
              {
                "name": "map-role"
              }
            ]
          },
          {
            "name": "Users",
            "ownerManagedAccess": false,
            "attributes": {},
            "_id": "f427e53e-0226-4d75-a318-2fd72a64066c",
            "uris": [],
            "scopes": [
              {
                "name": "user-impersonated"
              },
              {
                "name": "view"
              },
              {
                "name": "manage-group-membership"
              },
              {
                "name": "impersonate"
              },
              {
                "name": "map-roles"
              },
              {
                "name": "manage"
              }
            ]
          }
        ],
        "policies": [
          {
            "id": "ad37853a-73ad-40ae-8ff7-29412a7a717a",
            "name": "map-role.permission.35ba556f-fe6a-4ff2-8a79-9c147704b3d6",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "AFFIRMATIVE",
            "config": {
              "resources": "[\"role.resource.35ba556f-fe6a-4ff2-8a79-9c147704b3d6\"]",
              "scopes": "[\"map-role\"]"
            }
          },
          {
            "id": "19d838ef-96d7-4174-b8fc-3487271a28a5",
            "name": "map-role-client-scope.permission.35ba556f-fe6a-4ff2-8a79-9c147704b3d6",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "AFFIRMATIVE",
            "config": {
              "resources": "[\"role.resource.35ba556f-fe6a-4ff2-8a79-9c147704b3d6\"]",
              "scopes": "[\"map-role-client-scope\"]"
            }
          },
          {
            "id": "b8669cac-1c6d-4816-a899-20093a4534a1",
            "name": "map-role-composite.permission.35ba556f-fe6a-4ff2-8a79-9c147704b3d6",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "AFFIRMATIVE",
            "config": {
              "resources": "[\"role.resource.35ba556f-fe6a-4ff2-8a79-9c147704b3d6\"]",
              "scopes": "[\"map-role-composite\"]"
            }
          },
          {
            "id": "034caaca-0bc0-4bbd-9791-21ff511edcd3",
            "name": "manage.permission.users",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "UNANIMOUS",
            "config": {
              "resources": "[\"Users\"]",
              "scopes": "[\"manage\"]"
            }
          },
          {
            "id": "db0b2259-725e-4bcb-a06a-fc4d1acab236",
            "name": "view.permission.users",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "UNANIMOUS",
            "config": {
              "resources": "[\"Users\"]",
              "scopes": "[\"view\"]"
            }
          },
          {
            "id": "c0926f99-19cb-434c-bdbf-8c1f7f25767b",
            "name": "map-roles.permission.users",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "UNANIMOUS",
            "config": {
              "resources": "[\"Users\"]",
              "scopes": "[\"map-roles\"]"
            }
          },
          {
            "id": "3593611d-9b4e-477a-a072-3f08303e8d3c",
            "name": "manage-group-membership.permission.users",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "UNANIMOUS",
            "config": {
              "resources": "[\"Users\"]",
              "scopes": "[\"manage-group-membership\"]"
            }
          },
          {
            "id": "9bba5491-844f-44d0-8eb9-178cfa7dd908",
            "name": "admin-impersonating.permission.users",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "UNANIMOUS",
            "config": {
              "resources": "[\"Users\"]",
              "scopes": "[\"impersonate\"]"
            }
          },
          {
            "id": "f79c2b36-c265-41fb-86b1-49c3b3700cc9",
            "name": "user-impersonated.permission.users",
            "type": "scope",
            "logic": "POSITIVE",
            "decisionStrategy": "UNANIMOUS",
            "config": {
              "resources": "[\"Users\"]",
              "scopes": "[\"user-impersonated\"]"
            }
          }
        ],
        "scopes": [
          {
            "id": "07887565-ec9b-430e-abd6-6aba9cb3ed0d",
            "name": "map-role"
          },
          {
            "id": "1b57f7db-5f14-41dc-a61d-43a0bd628a17",
            "name": "map-role-client-scope"
          },
          {
            "id": "f9917790-3067-47a2-a466-53fb2e42da9a",
            "name": "map-role-composite"
          },
          {
            "id": "e4ffdd93-bab4-4ad0-b497-ab11a7c22b2a",
            "name": "manage"
          },
          {
            "id": "e71d81c5-7eb9-4bbf-a7b0-c246344a1533",
            "name": "view"
          },
          {
            "id": "24c726a6-3e99-430f-8d30-9374c8e46051",
            "name": "map-roles"
          },
          {
            "id": "b5299854-357b-4b24-9513-6708082fd5b5",
            "name": "impersonate"
          },
          {
            "id": "042fb64e-4836-4219-84e5-56cdb636228d",
            "name": "user-impersonated"
          },
          {
            "id": "47794a1d-eac8-4d95-808c-4df7ef141523",
            "name": "manage-group-membership"
          }
        ]
      }
    },
    {
      "id": "e65f351d-ec82-455d-98b1-bd91f2c86905",
      "clientId": "security-admin-console",
      "name": "${client_security-admin-console}",
      "baseUrl": "/auth/admin/ZOOM-TEST/console/index.html",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "redirectUris": [
        "/auth/admin/ZOOM-TEST/console/*"
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
          "id": "9ef33c45-4fc1-43e0-a1c2-3de080a70809",
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
      "id": "d6f76967-1b69-4f40-ac81-b1f3c127cd30",
      "clientId": "the-best-app",
      "surrogateAuthRequired": false,
      "enabled": true,
      "clientAuthenticatorType": "client-secret",
      "secret": "**********",
      "redirectUris": [
        "https://localhost:8443/*"
      ],
      "webOrigins": [],
      "notBefore": 0,
      "bearerOnly": false,
      "consentRequired": false,
      "standardFlowEnabled": true,
      "implicitFlowEnabled": false,
      "directAccessGrantsEnabled": true,
      "serviceAccountsEnabled": true,
      "publicClient": false,
      "frontchannelLogout": false,
      "protocol": "openid-connect",
      "attributes": {
        "saml.assertion.signature": "false",
        "saml.force.post.binding": "false",
        "saml.multivalued.roles": "false",
        "saml.encrypt": "false",
        "saml.server.signature": "false",
        "saml.server.signature.keyinfo.ext": "false",
        "exclude.session.state.from.auth.response": "false",
        "saml_force_name_id_format": "false",
        "saml.client.signature": "false",
        "tls.client.certificate.bound.access.tokens": "false",
        "saml.authnstatement": "false",
        "display.on.consent.screen": "false",
        "saml.onetimeuse.condition": "false"
      },
      "authenticationFlowBindingOverrides": {},
      "fullScopeAllowed": true,
      "nodeReRegistrationTimeout": -1,
      "protocolMappers": [
        {
          "id": "1e18c62a-b500-4427-a09a-996767674fb2",
          "name": "Client Host",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usersessionmodel-note-mapper",
          "consentRequired": false,
          "config": {
            "user.session.note": "clientHost",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "clientHost",
            "jsonType.label": "String"
          }
        },
        {
          "id": "06f495a2-8ecb-40ee-b295-7190d8f988ce",
          "name": "Client ID",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usersessionmodel-note-mapper",
          "consentRequired": false,
          "config": {
            "user.session.note": "clientId",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "clientId",
            "jsonType.label": "String"
          }
        },
        {
          "id": "e8a1ba7b-b3fe-4662-8623-907f65041b2a",
          "name": "Client IP Address",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-usersessionmodel-note-mapper",
          "consentRequired": false,
          "config": {
            "user.session.note": "clientAddress",
            "id.token.claim": "true",
            "access.token.claim": "true",
            "claim.name": "clientAddress",
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
    }
  ],
  "clientScopes": [
    {
      "id": "e9ce7ed2-6aae-450a-ab3a-c736ea2739e8",
      "name": "address",
      "description": "OpenID Connect built-in scope: address",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${addressScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "2137410b-9c86-437b-a127-c34c058002f2",
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
      "id": "1ca7365c-67e3-4e1b-94c9-0e936d818004",
      "name": "email",
      "description": "OpenID Connect built-in scope: email",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${emailScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "d9a18dfe-e2b8-4cb2-b085-dbc7c230a113",
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
          "id": "0e610495-35f3-4b73-8ab5-4354bb0d53e8",
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
      "id": "449f5b86-6be9-4679-8777-4d0737b1ed6d",
      "name": "offline_access",
      "description": "OpenID Connect built-in scope: offline_access",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${offlineAccessScopeConsentText}",
        "display.on.consent.screen": "true"
      }
    },
    {
      "id": "fda153f9-081d-43e5-950e-18cbb9df2574",
      "name": "phone",
      "description": "OpenID Connect built-in scope: phone",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${phoneScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "e867a2f4-2854-4086-b1d9-f70fce36eea7",
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
          "id": "f7807df4-1ca8-46d4-83e3-c0e02191caf5",
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
    },
    {
      "id": "1fe5787c-c143-403c-9a21-2427be5f43a1",
      "name": "profile",
      "description": "OpenID Connect built-in scope: profile",
      "protocol": "openid-connect",
      "attributes": {
        "consent.screen.text": "${profileScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "9cd26ce1-5709-48b4-b125-c8677d643fd6",
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
          "id": "7aaab426-f540-473d-b1d3-dc6ecc6c6377",
          "name": "full name",
          "protocol": "openid-connect",
          "protocolMapper": "oidc-full-name-mapper",
          "consentRequired": false,
          "config": {
            "id.token.claim": "true",
            "access.token.claim": "true",
            "userinfo.token.claim": "true"
          }
        },
        {
          "id": "d856cdea-94aa-40a4-b3fc-9e680220ba74",
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
          "id": "410be83d-ab4a-4bbf-b6f5-8aa7851f2c46",
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
          "id": "ea8582e3-367c-44fc-b4c1-057b17370011",
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
          "id": "3fe317b8-0d0f-48c8-80a7-3178209d21f0",
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
          "id": "14cb4a65-d44e-438d-8bd1-c97cc8da9ee4",
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
          "id": "cddc4a81-9701-425c-aca4-0686864c0c04",
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
          "id": "1b408402-1f3d-43d9-a55e-198687340655",
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
          "id": "ed51d3cb-448e-40ab-83e8-7dc7bddff0d5",
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
          "id": "b326de07-e614-45a6-a2a0-ea79174b30c2",
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
          "id": "7f2ed166-c9e0-432f-a14d-134637ad4bae",
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
          "id": "d88acf97-2a9c-4c3a-95d2-dfeb6d576fe1",
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
          "id": "b0ae7cc3-4520-423b-bc44-8a03be29fa37",
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
        }
      ]
    },
    {
      "id": "6ad1ecd8-ba32-4493-8d66-f8852df6cc8e",
      "name": "role_list",
      "description": "SAML role list",
      "protocol": "saml",
      "attributes": {
        "consent.screen.text": "${samlRoleListScopeConsentText}",
        "display.on.consent.screen": "true"
      },
      "protocolMappers": [
        {
          "id": "c464c189-27c6-4586-976b-a69071dc5e2b",
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
    "jboss-logging"
  ],
  "enabledEventTypes": [],
  "adminEventsEnabled": false,
  "adminEventsDetailsEnabled": false,
  "components": {
    "org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy": [
      {
        "id": "ef94c7e5-ee03-409a-a8ca-450b704b2bf5",
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
        "id": "4661b3ec-6510-46d0-846c-cda564fcb374",
        "name": "Allowed Protocol Mapper Types",
        "providerId": "allowed-protocol-mappers",
        "subType": "anonymous",
        "subComponents": {},
        "config": {
          "allowed-protocol-mapper-types": [
            "oidc-usermodel-attribute-mapper",
            "oidc-sha256-pairwise-sub-mapper",
            "saml-user-property-mapper",
            "oidc-address-mapper",
            "saml-user-attribute-mapper",
            "oidc-usermodel-property-mapper",
            "oidc-full-name-mapper",
            "saml-role-list-mapper"
          ]
        }
      },
      {
        "id": "585dbb96-b317-42d1-8901-ff911feed54d",
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
        "id": "d74cc4b7-392a-4151-9f0f-2857b774b791",
        "name": "Allowed Protocol Mapper Types",
        "providerId": "allowed-protocol-mappers",
        "subType": "authenticated",
        "subComponents": {},
        "config": {
          "allowed-protocol-mapper-types": [
            "saml-user-attribute-mapper",
            "oidc-full-name-mapper",
            "oidc-usermodel-property-mapper",
            "saml-role-list-mapper",
            "oidc-sha256-pairwise-sub-mapper",
            "oidc-usermodel-attribute-mapper",
            "oidc-address-mapper",
            "saml-user-property-mapper"
          ]
        }
      },
      {
        "id": "1e7d237a-371e-47c3-8777-ae826f29f03a",
        "name": "Consent Required",
        "providerId": "consent-required",
        "subType": "anonymous",
        "subComponents": {},
        "config": {}
      },
      {
        "id": "20dd75ac-997e-4ca0-a243-ad64775e704f",
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
        "id": "40903254-5ad0-4301-8c6f-7c76aceae3c0",
        "name": "Full Scope Disabled",
        "providerId": "scope",
        "subType": "anonymous",
        "subComponents": {},
        "config": {}
      },
      {
        "id": "72524305-11b2-4538-b7f6-ade91562399a",
        "name": "Max Clients Limit",
        "providerId": "max-clients",
        "subType": "anonymous",
        "subComponents": {},
        "config": {
          "max-clients": [
            "200"
          ]
        }
      }
    ],
    "org.keycloak.storage.UserStorageProvider": [
      {
        "id": "d6c706d6-528e-47cf-918a-4f878bee4b1e",
        "name": "ldap",
        "providerId": "ldap",
        "subComponents": {
          "org.keycloak.storage.ldap.mappers.LDAPStorageMapper": [
            {
              "id": "16860339-7513-422f-b726-10986df737e5",
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
                "always.read.value.from.ldap": [
                  "true"
                ],
                "read.only": [
                  "true"
                ],
                "user.model.attribute": [
                  "firstName"
                ]
              }
            },
            {
              "id": "261cd4ed-d5a0-4fb7-95ce-88604cc85917",
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
              "id": "d70df1d5-92cf-4307-b9e2-07fc8444c1e9",
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
              "id": "e00195fe-4560-4109-b0c6-b918b5d2e226",
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
              "id": "2b9cfa79-c335-4904-8eab-3543380e4cf3",
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
                "read.only": [
                  "true"
                ],
                "always.read.value.from.ldap": [
                  "true"
                ],
                "user.model.attribute": [
                  "lastName"
                ]
              }
            },
            {
              "id": "b930befb-492c-4650-ba68-bce9bdcb833d",
              "name": "MSAD account controls",
              "providerId": "msad-user-account-control-mapper",
              "subComponents": {},
              "config": {}
            },
            {
              "id": "ee40c59e-7055-4cdc-ac85-0459e704cb84",
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
            }
          ]
        },
        "config": {
          "fullSyncPeriod": [
            "86500"
          ],
          "pagination": [
            "true"
          ],
          "usersDn": [
            "OU=Prague,DC=testdomain,DC=cz"
          ],
          "connectionPooling": [
            "true"
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
          "bindDn": [
            "CN=administrator,CN=Users,DC=testdomain,DC=cz"
          ],
          "usernameLDAPAttribute": [
            "cn"
          ],
          "changedSyncPeriod": [
            "-1"
          ],
          "bindCredential": [
            "**********"
          ],
          "lastSync": [
            "1539240306"
          ],
          "vendor": [
            "ad"
          ],
          "uuidLDAPAttribute": [
            "objectGUID"
          ],
          "connectionUrl": [
            "ldap://192.168.110.202"
          ],
          "allowKerberosAuthentication": [
            "false"
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
            "person"
          ],
          "rdnLDAPAttribute": [
            "cn"
          ],
          "editMode": [
            "READ_ONLY"
          ],
          "validatePasswordPolicy": [
            "false"
          ],
          "batchSizeForSync": [
            "1000"
          ]
        }
      }
    ],
    "org.keycloak.keys.KeyProvider": [
      {
        "id": "576031fa-3769-48bf-8799-7bb73da8f24b",
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
        "id": "a45c3907-e7b6-4834-9a57-ef59a4014c5f",
        "name": "rsa-generated",
        "providerId": "rsa-generated",
        "subComponents": {},
        "config": {
          "priority": [
            "100"
          ]
        }
      },
      {
        "id": "639473e8-4e92-41af-9160-bddbc323797f",
        "name": "aes-generated",
        "providerId": "aes-generated",
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
      "id": "11f12bb2-1d0c-4901-8add-a71d63fe65c9",
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
      "id": "9d0e564d-e7ec-41cc-b7c6-48779063e4ec",
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
      "id": "33be04ee-22c0-47d9-803b-adddc998e0c4",
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
      "id": "f31a4d44-5988-43f5-9c42-dad39140312d",
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
      "id": "3b8735e2-49a1-4afb-b978-d52c85bc2c51",
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
      "id": "e45b2c41-e569-47d5-980a-751f51122270",
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
      "id": "90a262e6-adf7-4e33-9021-541afb8554ff",
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
      "id": "1e8cef65-74cf-4bb1-8e9b-a6a75df86787",
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
      "id": "7083a574-4219-465c-997e-6c23906d6fbf",
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
      "id": "cd325e69-dfb9-488f-a664-9a47bf0a6dce",
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
      "id": "61fa231f-e75a-4d1f-a90f-1001a2821efa",
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
      "id": "137eb0ba-af14-4c74-9398-5da099923876",
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
      "id": "3b3e4e87-202c-475d-a34d-86d5caa54774",
      "alias": "create unique user config",
      "config": {
        "require.password.update.after.registration": "false"
      }
    },
    {
      "id": "d8a8acd6-9e01-4f7f-b1c0-0be67a6037da",
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
