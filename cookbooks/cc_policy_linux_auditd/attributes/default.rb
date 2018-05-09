default['cc_policy_linux_auditd']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_auditd',
                                                enabled: false}]
                              }


                             ]
                          }

default['cc_policy_linux_auditd']['ui_metadata']['policy_linux_auditd'] = {
           "policy"=>"policy_linux_auditd",
           "display_name"=>"policy_linux_auditd",
           "techspec"=> '<b>CSD:</b>AD.20.1.2.2, AD.20.1.2.3.1, AD.20.1.2.3.2, AD.20.1.2.3.3, AD.20.1.2.3.4, AD.20.1.2.3.5, AD.20.1.2.3.6, AD.20.1.2.3.7, AD.20.1.2.3.8, AD.20.1.2.3.9, AD.20.1.2.3.10, AD.20.1.2.3.11, AD.20.1.2.3.12, AD.20.1.2.3.13, AD.20.1.2.3.14, AD.20.1.2.3.15, AD.20.1.2.3.16, AD.20.1.2.3.17, AD.20.1.2.3.18, AD.20.1.2.3.19, AD.20.1.2.3.20, AD.20.1.2.3.21, AD.20.1.2.3.22, AD.20.1.2.3.23<br><b>-ITCS:</b>NA<br>',
              "attributes"=>[
                  {"key"=>"install_audit_service",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Install audit service",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Select if audit service is needed"},
                  {"key"=>"copy_conf_template",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Copy configuration template",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Specifies if audit configuration should be copied from a template"},
				   {"key"=>"copy_rules_template",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Copy audit rules template",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Specifies if audit rules should be copied from a template"},
				   {"key"=>"create_audit_log",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Create audit log file",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Specifies if audit log file should be created nor not"},
                  {"key"=>"audit_rules",
                   "type"=>"csv",
                   "display_name"=> "Audit rules",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of audit rules as per tech-spec requirements.  - '-a exit,always -F path=/usr -F perm=a'",
                   "default"=>[]},
                  {"key"=>"whitelist_rules",
                   "type"=>"csv",
                   "display_name"=> "White-list rules",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"White-list attribute to exclude the rules defined in audit_rules.  - '-a exit,always -F path=/usr -F perm=a'",
                   "default"=>[]}
               ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
