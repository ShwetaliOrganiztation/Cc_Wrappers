default['cc_policy_windows_db2']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{ 
                                                policy: 'policy_windows_db2',
                                                enabled: false}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_db2'] ['ui_metadata'] ['policy_windows_db2'] = {
                            policy: 'policy_windows_db2',
                            display_name: 'policy_windows_db2',
                            "techspec"=> '<b>CSD:</b>K.1.2.1.1,K.1.2.1.2,K.1.2.1.3,K.1.2.1.4,K.1.2.2.1,K.1.2.2.2,K.1.2.2.3,K.1.2.2.4,K.1.8.8.2,K.1.8.10,K.1.8.15.1,K.1.8.15.2,K.1.9.1.3,K.1.9.1.4,K.1.9.2,K.1.9.3,K.1.9.4,K.1.9.5.1,K.1.9.5.2,K.1.9.5.3,K.1.9.5.4,K.1.9.5.5,K.1.9.5.6,K.1.9.5.7,K.1.9.5.8,K.1.9.5.9,K.1.9.5.10,K.1.9.5.11,K.1.9.5.12,K.1.9.5.13,K.1.9.5.14,K.1.9.5.15,K.1.9.5.16,K.1.9.5.17,K.1.9.5.18,K.1.9.5.19,K.1.9.5.20,K.1.9.5.21,K.1.9.5.22,K.1.9.5.23,K.1.9.5.24,K.1.9.5.25,K.1.9.5.26,K.1.9.5.27,K.1.9.5.28,K.1.9.5.29,K.1.9.5.30,K.1.9.6.1,K.1.9.6.2,K.1.9.6.3,K.1.9.6.4,K.1.9.6.5,K.1.9.6.6,K.1.9.6.7,K.1.9.6.8,K.1.9.6.9,K.1.9.6.10,K.1.9.6.11,K.1.9.6.12,K.1.9.6.13,K.1.9.6.14,K.1.9.6.15,K.1.9.6.16,K.1.9.6.17,K.1.9.6.18,K.1.9.6.19,K.1.9.6.20,K.1.9.6.21,K.1.9.6.22,K.1.9.6.23,K.1.9.6.24,K.1.9.6.25,K.1.9.6.26<br><b>ITCS:</b>NA<br>',
              'attributes' => [{
                key:"enforce_instance_audit_settings",
                type:"boolean",
                display_name:"enforce_instance_audit_settings",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable policy audit scope settings.",
                default:"true"
              },{
                key:"enforce_database_audit_settings",
                type:"boolean",
                display_name:"enforce_database_audit_settings",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable policy audit category settings.",
                default:"true"
              },{
                key:"enforce_authentication_restriction",
                type:"boolean",
                display_name:"enforce_authentication_restriction",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable authentication restriction.",
                default:"true"
              },{
                key:"enforce_public_privilege_restriction_on_views",
                type:"boolean",
                display_name:"enforce_public_privilege_restriction_on_views",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable policy to revoke select privilege from system views from PUBLIC.",
                default:"true"
              },{
                key:"enforce_public_privilege_restriction_on_tables",
                type:"boolean",
                display_name:"enforce_public_privilege_restriction_on_tables",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable policy to revoke select privilege on system tables from PUBLIC.",
                default:"true"
              },{
                key:"enforce_public_privilege_restriction_on_schema",
                type:"boolean",
                display_name:"enforce_public_privilege_restriction_on_schema",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable policy to revoke CREATEIN privilege on schemas from PUBLIC.",
                default:"true"
              },{
                key:"enforce_public_privilege_restriction_on_database",
                type:"boolean",
                display_name:"enforce_public_privilege_restriction_on_database",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable policy to revoke IMPLICIT_SCHEMA and CONNECT authority on database from PUBLIC.",
                default:"true"
              },{
                key:"enforce_public_privilege_restriction_on_stored_procedures",
                type:"boolean",
                display_name:"enforce_public_privilege_restriction_on_stored_procedures",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Switch to enable/disable policy to revoke modification privileges on stored procedures from PUBLIC.",
                default:"true"
              },{
                key:"excluded_instances",
                type:"CSV",
                display_name:"excluded_instances",
                display_type:"string_array",
                validator:"",
                units:"",
                options:"",
                hint:"Provide instances to be excluded from remediation."
              },{
                key:"excluded_databases",
                type:"complex_hash",
                display_name:"excluded_databases",
                display_type: "object_set",
                "attributes" => [{
                display_type: "hash_of_Array"
                }],
                validator:"",
                units:"",
                options:"",
                hint:"Provide database names per instance to be excluded from remediation. <br> eg: instancename : databasename"
              },{
                key:"system_views",
                type:"CSV",
                display_name:"system_views",
                display_type:"string_array",
                validator:"",
                units:"",
                options:"",
                hint:"Provide system view names from which select privilege is to be revoked for PUBLIC."
              },{
                key:"system_tables",
                type:"CSV",
                display_name:"system_tables",
                display_type:"string_array",
                validator:"",
                units:"",
                options:"",
                hint:"Provide system table names from which select privilege is to be revoked for PUBLIC."
              },{
              key:"instance_audit_events_scope",
                type:"complex_hash",
                display_name:"instance_audit_events_scope",
                display_type:"object_set",
                "attributes" => [{
                      display_type: "key_value_pair",
                      validator:"^(AUDIT|OBJMAINT|SECMAINT|SYSADMIN)$",
                      "attributes" => [{
                        display_type: "string",
                        validator:"^(BOTH|SUCCESS|FAILURE)$"
                      }]
                }],
                validator:"",
                units:"",
                options:"",
                hint:"Provide instance level audit event names and respective scope value for the event. <br> eg: instancename : eventname : scope, <br> Valid scope values are - SUCCESS, FAILURE , BOTH"
              },{
              key:"database_audit_events_scope",
                type:"complex_hash",
                display_name:"database_audit_events_scope",
                display_type:"object_set",
                "attributes" => [{
                      display_type: "key_value_pair",
                      validator:"^(AUDIT|OBJMAINT|SECMAINT|SYSADMIN)$",
                      "attributes" => [{
                        display_type: "string",
                        validator:"^(BOTH|SUCCESS|FAILURE)$"
                      }]
                }],
                validator:"",
                units:"",
                options:"",
                hint:"Provide database level audit event names and respective scope value for the event. <br> eg: instancename : databsename : eventname : scope, <br> Valid scope values are -SUCCESS, FAILURE , BOTH"
              },{
                key:"config_value_for_authentication",
                type:"string",
                display_name:"config_value_for_authentication",
                display_type:"text_box",
                validator:"^(CLIENT|SERVER)$",
                units:"",
                options:"",
                hint:"Provide value for updating database manager configuration AUTHENTICATION parameter."
              },{
                key:"config_value_for_srvcon_auth",
                type:"string",
                display_name:"config_value_for_srvcon_auth",
                display_type:"text_box",
                validator:"^(CLIENT|SERVER)$",
                units:"",
                options:"",
                hint:"Provide value for updating database manager configuration SRVCON_AUTH parameter."
              }
	],
                            validator:'',
                            units:'',
                            hint:''
              }
              
default['cc_policy_windows_db2'] ['override_metadata'] ['policy_windows_db2'] = {
'deviations' => [
  {
    'patterns' => ["Configure audit event (.*) to (.*) from (.*) on instance (.*). Note: (.*)"],
    override_attribute: "whitelist_instance_audit_events_scope",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$4' => {'$1' => '$3'}
    }
  },
  {
    'patterns' => ["Create\/Update audit policy \'CC_DB_AUDIT_POLICY\' for event (.*) to (.*) from (.*) in database (.*) of instance (.*). Note: (.*)"],
    override_attribute: "whitelist_database_audit_events_scope",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$5' => {'$4' => {'$1' => '$3'}}
    }
  },
  {
    'patterns' => ["Set AUTHENTICATION value from (.*) to (.*) for instance (.*). Note: (.*)"],
    override_attribute: "whitelist_authentication_configuration",
    attribute_type: "hash",
    override_action: "add_update",
    override_value: {
      '$3' => '$1'
    }
  },
  {
    'patterns' => ["Set SRVCON_AUTH value from (.*) to (.*) for instance (.*). Note: (.*)"],
    override_attribute: "whitelist_srvcon_auth_configuration",
    attribute_type: "hash",
    override_action: "add_update",
    override_value: {
      '$3' => '$1'
    }
  },
  {
    'patterns' => ["Revoke SELECT privilege on table (.*) from PUBLIC in database (.*) of instance (.*)"],
    override_attribute: "whitelist_system_tables",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$3' => {'$2' => ['$1'] }
    }
  },
  {
    'patterns' => ["Revoke SELECT privilege on view (.*) from PUBLIC in database (.*) of instance (.*)"],
    override_attribute: "whitelist_system_views",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$3' => {'$2' => ['$1'] }
    }
  },
  {
    'patterns' => ["Revoke (.*) privilege from PUBLIC in database (.*) of instance (.*)"],
    override_attribute: "whitelist_db_privileges",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$3' => {'$2' => ['$1'] }
    }
  },
  {
    'patterns' => ["Revoke (.*) on SYSTOOLS.ADMINTASKS of Database: (.*) of instance: (.*) from PUBLIC"],
    override_attribute: "whitelist_public_restriction_on_admintask_table",
    attribute_type: "hash_of_array",
    override_action: "add_update",
    override_value: {
      '$3' => ['$2']
    }
  },
  {
    'patterns' => ["Revoke (.*) on SYSTOOLS.ADMIN_TASK_LIST of Database: (.*) of instance: (.*) from PUBLIC"],
    override_attribute: "whitelist_public_restriction_on_admintask_list_view",
    attribute_type: "hash_of_array",
    override_action: "add_update",
    override_value: {
      '$3' => ['$2']
    }
  },
  {
    'patterns' => ["Revoke CREATEIN privilege on schema (.*) from PUBLIC in database (.*) of instance (.*)"],
    override_attribute: "whitelist_schemas",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$3' => { '$2' => ['$1'] }
    }
  },
  {
    'patterns' => ["Revoke DROPIN, CREATEIN, ALTERIN from stored procedure schema (.*) of database (.*) of instance (.*)"],
    override_attribute: "whitelist_sp_schemas",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$3' => { '$2' => ['$1'] }
    }
  }
]
}
