default['cc_policy_aix_osr_full_path']['policy_map'] = { "components" => [
  {
    identified_by: 'value',
    id: 'os:aix',
    "enforced_by" => [
      {
        policy: 'policy_aix_osr_full_path',
        enabled: true
      }
    ]
  }
]
}

# default['policy_aix_osr_full_path']['extra_path'] = []
# default['policy_aix_osr_full_path']['priv_gid_ranges'] = [{ 'min' => 0, 'max' => 99 }, { 'min' => 101, 'max' => 199 }]
# default['policy_aix_osr_full_path']['group_whitelist'] = ['system', 'security', 'bin', 'sys', 'adm', 'uucp', 'mail', 'printq', 'cron', 'audit', 'shutdown', 'ecs', 'imnadm', 'ipsec', 'ldap', 'lp', 'haemrm', 'snapp', 'hacmp', 'pconsole']
# default['policy_aix_osr_full_path']['is_perm_normalize'] = true
# default['policy_aix_osr_full_path']['symlink_dir_list'] = ['/etc/rc.d/rc2.d', '/etc/rc.d/rc3.d', '/etc/rc.d/rc4.d', '/etc/rc.d/rc5.d', '/etc/rc.d/rc6.d', '/etc/rc.d/rc7.d', '/etc/rc.d/rc8.d', '/etc/rc.d/rc9.d']

default['cc_policy_aix_osr_full_path']['ui_metadata']['policy_aix_osr_full_path'] = {
  "policy" => "policy_aix_osr_full_path",
  "display_name" => "policy_aix_osr_full_path",
  "techspec" => '<b>CSD:</b>E.1.8.12.2, E.1.8.12.3, E.1.8.12.4, E.1.8.13.1, E.1.8.13.2, E.1.8.13.3, E.1.8.14.1, E.1.8.14.2, E.1.8.14.3, E.1.8.16.2, E.1.8.16.3<br><b>-ITCS:</b>Section 2.1.1(5.1)<br>',
  "attributes" => [
    {
      "key" => "extra_path",
      "type" => "csv",
      "display_name" => "Full Path to Environment Commands",
      "display_type" => "string_array",
      "validator" => "",
      "units" => "",
      "options" => [
      ],
      "hint" => "Ensure that each entry specifies the full path of the file/command/script to be executed"
    },
	{
		"key"=> "priv_gid_ranges",
		"display_name"=> "Default privileged user id and group ranges",
		"type"=> "complex_hash",
		"display_type"=> "array_set",
		"attributes" => [{
			display_type: "row_objects",
			"options"=> "min,max",
			"display_name"=> "Min,Max"
			}],
		validator: "",
		units: "",
		hint: "Provide privilege group ids to be excluded from remediation.",
		default:[{ 'min' => 0, 'max' => 99 }, { 'min' => 101, 'max' => 199 }]
	},
    {
      "key" => "group_whitelist",
      "type" => "CSV",
      "display_name" => "Group White List",
      "display_type" => "string_array",
      "validator" => "",
      "units" => "",
      "options" => [
      ],
      "hint" => "Group names to be excluded"
    },
    {
      "key" => "is_perm_normalize",
      "type" => "boolean",
      "display_name" => "Is Normalized",
      "display_type" => "single_select",
      "validator" => "",
      "units" => "",
      "options" => "[{ \"key\": \"true\", \"value\": \"true\"}, { \"key\": \"false\", \"value\: \"false\"}]",
      "hint" => "enable/disable normalization on cron entries"
    },
    {
      "key" => "symlink_dir_list",
      "type" => "CSV",
      "display_name" => "Symlink Directory List",
      "display_type" => "string_array",
      "validator" => "",
      "units" => "",
      "options" => [
      ],
      "hint" => "directories where linking files are present"
    }
  ],
  "validator" => "",
  "units" => "",
  "hint" => ""
}
