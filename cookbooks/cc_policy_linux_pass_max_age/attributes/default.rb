default['cc_policy_linux_pass_max_age']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_pass_max_age',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_linux_pass_max_age']['ui_metadata']['policy_linux_pass_max_age'] = {
           "policy"=>"policy_linux_pass_max_age", 
           "display_name"=>"policy_linux_pass_max_age",
           "techspec"=>'<b>CSD:</b>AD.1.1.1.1, AD.1.1.1.2, AD.1.1.7.1, AD.1.1.9.0, AD.1.1.9.1, AD.1.1.10.1, AD.1.1.10.2, AD.1.1.11.1, AD.1.1.12.1, AD.1.1.13.1.0, AD.1.1.13.1.1, AD.1.1.13.2, AD.1.1.13.3<br><b>-ITCS:</b>Section 2.1.2(2.1), 2.1.2(5.2)<br>',
           "attributes"=>[
             {"key"=>"maxdays",
                   "type"=>"number",
                   "display_type"=>"text_box",
                   "display_name"=>"Password Expiration Shadow ",
                   "validator"=>"[0-9]*",
                   "units"=>"days",
                   "options"=>[],
                   "hint"=>"Set the max password age value in days for EXISTING user ids on a system"},
             {"key"=>"maxdays_login_defs",
                   "type"=>"number",
                   "display_type"=>"text_box",
                   "display_name"=>"Password Expiration Login",
                   "validator"=>"[0-9]*",
                   "units"=>"days",
                   "options"=>[],
                   "hint"=>"Set the max password age value in days for any new users created on that system",
              "default"=>"90"
           },
            {
    "key"=> "maxdays_by_uid",
    "type"=> "complex_hash",
    "display_name"=> "Max days by users",
    "display_type"=> "array_set",
    "validator"=> "",
    "attributes"=> [{
      "display_type"=> "row_objects",
      "options"=> "userid,maxdays",
      "display_name"=> "User Name, Max Days"
    }],
    "options"=> [],
    "units"=> "",
    "hint"=> "Set the max days value in days for specific user(s) created on that system"
     },
{
    "key"=> "maxdays_by_gid",
    "type"=> "complex_hash",
    "display_name"=> "Max days by group ids",
    "display_type"=> "array_set",
    "validator"=> "",
    "attributes"=> [{
      "display_type"=> "row_objects",
      "options"=> "gid,maxdays",
      "display_name"=> "Group ID, Max Days"
    }],
    "options"=> [],
    "units"=> "",
    "hint"=> "Set the max days value in days for specific group(s) created on that system"
  },

                  {"key"=>"whitelist",
                   "type"=>"csv",
                   "display_name"=> "User Ids to Exclude",
                   "display_type"=>"string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of users excluded from password aging requirements."},
                  {"key"=>"exempt_accounts_without_shell",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
       "display_name"=>"exempt accounts without shell",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows user accounts with their shell set to /sbin/nologin or /bin/false to be excluded from aging requirements."},
                  {"key"=>"exempt_locked_accounts",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
       "display_name"=>"exempt locked accounts",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows user accounts which are locked to be excluded from aging requirements."},
                  {"key"=>"exempt_disabled_accounts",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
       "display_name"=>"exempt disabled accounts",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows user accounts without passwords and cannot be used !, !!, *, x, or <= 2 chars in the password field of /etc/shadow to  be excluded from aging requirements"},
                  {"key"=>"exempt_pam_denied_user_list",
                   "type"=>"Boolean", 
                   "display_type"=>"single_select",
       "display_name"=>"exempt pam denied user list",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Allows user accounts which have been denied via a denied user list to be exempt from the specified checks."}
                   ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}



              