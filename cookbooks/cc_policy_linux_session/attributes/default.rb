default['cc_policy_linux_session']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_session',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_linux_session']['ui_metadata']['policy_linux_session'] = {
"policy"=>"policy_linux_session",
"display_name" => "policy_linux_session",
"techspec"=>'<b>CSD:</b>AD.1.9.1.2, AD.1.9.1.2.1, AD.1.9.1.3, AD.1.9.1.4, AD.1.9.1.5, AD.1.9.1.6, AD.1.9.1.7, AD.10.1.4.1, AD.10.1.4.6, AD.10.1.4.7, AD.10.1.4.8, AD.10.1.4.9, AD.10.1.4.10<br><b>-ITCS:</b>Section 2.1.2(3.2)<br>',
"attributes" =>[
			{
				"key"=>"umask",
				"display_name"=>"umask",
				"type"=> "number",
				"display_type"=> "text_box",
				"validator"=> "[0-9]*",
			    "units"=>"",
				"hint"=> "Enter the umask value"
			},
            {
                "key"=> "enforce_timeout",
                "display_name"=> "Enforce Timeout",
                "type"=> "boolean",
                "display_type"=> "single_select",
                "validator"=> "",
                "units"=> "",
                "hint"=> "Enable/Disable the functionality to set the timeout. Default=Disabled",
                "options"=>"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
                "default"=>"false"
            },
				{
				"key"=> "timeout",
				"display_name" => "Timeout Value",
				"type"=> "number",
				"display_type" => "text_box",
				"validator" => "[0-9]*",
				"units" => "seconds",
				"hint" => "The number of seconds a user maybe idle before auto logout. Values must be greater than 60."
			},
            {
				"key"=> "timeout_variables",
				"display_name" => "Timeout Variables",
				"type"=> "string_array",
				"display_type" => "string_array",
				"validator" => "",
				"units" => "",
				"hint" => "Timeout Variables List"
			},
			{
				"key"=> "skel_files",
				"display_name" => "Skeleton Files",
				"type"=> "string_array",
				"display_type" => "string_array",
				"validator" => "",
				"units" => "",
				"hint" => "Skeleton File List"
			},
			{
				"key"=> "login_shells",
				"display_name" => "Login Shells",
				"type"=> "string_array",
				"display_type" => "string_array",
				"validator" => "",
				"units" => "",
				"hint" => "Specifies the login shells list which supports time out and can be used for an user."
			},
      {
				"key"=> "special_purpose_shells",
				"display_name" => "Special Purpose Shells",
				"type"=> "string_array",
				"display_type" => "string_array",
				"validator" => "",
				"units" => "",
				"hint" => "Specifies the login shells list which are specific for system ids and should not be assigned to standard users.",
        "default"=> ['/sbin/shutdown', '/bin/sync', '/sbin/halt']
			},
      {
				"key"=> "whitelist_users_for_login_shell",
				"display_name" => "User Whitelist for login shell",
				"type"=> "string_array",
				"display_type" => "string_array",
				"validator" => "",
				"units" => "",
				"hint" => "Users for which login shell change to be exempted from remediation",
        "default"=> []
			},
			{
				"key"=> "history_enabled",
				"display_name" => "History Enable Flag",
				"type"=> "boolean",
				"display_type" => "single_select",
				"validator" => "^(?i)(true|false)$",
				"units" => "",
				"options" => "[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
				"hint" => "User cmd-history flag. If false, do nothing; if true, enable this feature and add the history settings.",
				"default" => false
			},
			{
				"key"=> "history_size",
				"display_name" => "HISTSIZE variable",
				"type"=> "string",
				"display_type" => "text_box",
				"validator" => "[0-9]+",
				"units" => "",
				"hint" => "The environment variable HISTSIZE",
				"default" => "1024"
			},
			{
				"key"=> "history_settings_dir",
				"display_name" => "History Settings directory",
				"type"=> "string",
				"display_type" => "text_box",
				"validator" => "",
				"units" => "",
				"hint" => "The cmd-history settings directory",
			}
		],
 "validator"=> "",
 "units"=> "",
 "hint"=> ""
}
