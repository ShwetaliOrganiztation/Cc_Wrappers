default['cc_policy_linux_pass_min_age']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_pass_min_age',
                                                enabled: true}]
                              }


                             ]
                          }
        default['cc_policy_linux_pass_min_age']['ui_metadata']['policy_linux_pass_min_age'] = {
           "policy"=>"policy_linux_pass_min_age",
           "display_name"=>"policy_linux_pass_min_age",
           "techspec"=> '<b>CSD:</b>AD.1.1.3.1, AD.1.1.3.2<br><b>-ITCS:</b>Section 2.1.2(2.1)<br>',
              "attributes"=>[
                  {"key"=>"mindays",
                   "type"=>"number",
                   "display_type"=>"text_box",
                   "display_name"=>"Minimum Password Age in Days",
                   "validator"=>"[0-9]*",
                   "units"=>"days",
                   "options"=>[],
                   "hint"=>"Minimum password age in days"},
                  {"key"=>"whitelist",
                   "type"=>"csv",
                   "display_name"=> "User names to exclude",
                   "display_type"=>"string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of users to exclude."},
                  {"key"=>"exempt_accounts_without_shell",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Exempt Accounts without a shell",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows user accounts with their shell set to /sbin/nologin or /bin/false to be excluded from ageing requirements."},
                  {"key"=>"exempt_locked_accounts",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Exempt Locked Accounts",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows user accounts which are locked to be excluded from ageing requirements."},
                  {"key"=>"exempt_disabled_accounts",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Exempt Disabled Accounts",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows disabled user accounts (!, !!, *, x, or length of password<= 2 chars in the password field of /etc/shadow and without passwords) to be excluded from ageing requirements."},
                  {"key"=>"exempt_pam_denied_user_list",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "Exempt userids in the pam denied user list",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows user accounts which have been denied via a denied user list to be exempt from the specified checks."}
               ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
