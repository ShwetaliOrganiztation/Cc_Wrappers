default['cc_policy_linux_snmpd']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_snmpd',
                                                enabled: true}]
                              }


                             ]
                          }


  default['cc_policy_linux_snmpd']['ui_metadata']['policy_linux_snmpd'] = {
                        "policy"=>"policy_linux_snmpd",
                        "display_name"=>"policy_linux_snmpd",
                        "techspec"=>'<b>CSD:</b>AD.1.5.9.18, AD.1.5.9.19<br><b>-ITCS:</b>Section 2.1.2(8)<br>',
                        "attributes"=>[
                        {
                            "key"=>"community_name_map",
                            "type"=>"complex_hash",
                            "display_name"=>"community_name_map",
                            "display_type"=> "object_set",
							"attributes" => [{
								"display_type"=> "key_value_pair",
								"attributes" => [{
									"display_type"=> "string"
								}]
							}],
                            "validator"=>"",
                            "units"=>"",
                            "options"=>[

                            ],
                            "hint"=>"Community name mappings from before to after. If special value 'RANDOM' is specified after value, replaced with 8 random character.",
						},
                        {
                            "key"=>"conf_file_perms",
                            "type"=>"complex_hash",
                            "display_name"=>"conf_file_perms",
                            "display_type"=> "key_value_pair",
							"attributes" => [{
								"display_type"=> "directory_permission"
							}],
                            "validator"=>"",
                            "units"=>"",
                            "options"=>[

                            ],
                            "hint"=>"File permissions for SNMP configuration files."
						},
                        {
                            "key"=>"conf_file_list",
                            "type"=>"csv",
                            "display_name"=>"configuration file list",
                            "display_type"=>"string_array",
                            "validator"=>"",
                            "units"=>"",
                            "options"=>[

                            ],
                            "hint"=>"List of SNMP configuration files(Files Only)"
                        },
                        {
                            "key"=>"whitelist_file_perms",
                            "type"=>"csv",
                            "display_name"=>"whitelist",
                            "display_type"=>"string_array",
                            "validator"=>"",
                            "units"=>"",
                            "options"=>[

                            ],
                            "hint"=>"List of SNMP configuration files(Files Only) to skip checking from file permissions"
                        }
                       
                        ],
                        "validator"=>"",
                        "units"=>"",
                        "hint"=>""
					}
