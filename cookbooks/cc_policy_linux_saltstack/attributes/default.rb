default['cc_policy_linux_saltstack']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_saltstack',
                                                enabled: true}]
                              }


                             ]
                          }


  default['cc_policy_linux_saltstack']['ui_metadata']['policy_linux_saltstack'] = {
"policy"=>"policy_linux_saltstack",
"display_name"=>"policy_linux_saltstack",

"attributes"=>[
  {
    "key"=>"log_level_logfile",
    "type"=>"Boolean",
    "display_name"=>"log_level_logfile",
    "display_type"=>"text_box",
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>"log level log file"
  },
  {
    "key"=>"log_datefmt_logfile",
    "type"=>"Boolean",
    "display_name"=>"log_datefmt_logfile",
    "display_type"=>"text_box",
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>"log date format log file"
  },
  {
    "key"=>"open_mode",
    "type"=>"Boolean",
    "display_name"=>"open mode",
    "display_type"=>"text_box",
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>""
  },
  {
    "key"=>"allow_autosign_file",
    "type"=>"Boolean",
    "display_name"=>"allow autosign file",
    "display_type"=>"text_box",
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>""
  },
  {
    "key"=>"permissive_pki_access",
    "type"=>"Boolean",
    "display_name"=>"permissive pki access",
    "display_type"=>"text_box",
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>""
  },
  {
    "key"=>"verify_env",
    "type"=>"Boolean",
    "display_name"=>"verification environment",
    "display_type"=>"text_box",
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>""
  },
  {
    "key"=>"saltdirlist",
    "type"=>"Boolean",
    "display_name"=>"salt directory list",
    "display_type"=>"text_box",
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>""
  },
  {
    "key"=>"default_saltdirlist",
    "type"=>"complex_hash",
    "display_name"=>"default_saltdirlist",
    "display_type"=> "object_set",
		"attributes" => [{
			"display_type"=> "key_value_pair",
			"attributes" => [{
				"display_type"=> "directory_permission"
			}]
		}],
    "validator"=>"",
    "units"=>"",
    "options"=>[

    ],
    "hint"=>"default saltdirlist"}

  ],
"validator"=>"",
"units"=>"",
"hint"=>""
}
