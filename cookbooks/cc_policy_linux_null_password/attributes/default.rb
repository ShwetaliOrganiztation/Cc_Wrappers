default['cc_policy_linux_null_password']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_null_password',
                                                enabled: true}]
                              }


                             ]
                          }




default['cc_policy_linux_null_password']['ui_metadata']['policy_linux_null_password'] = {
                            "policy"=>"policy_linux_null_password",
                            "display_name"=>"policy_linux_null_password",
                            "techspec"=>'<b>CSD:</b>NA<br><b>-ITCS:</b>Section 2.1.2(2.1)<br>',

                                "attributes"=>[
                                  {
                                    "key"=>"allowed",
                                    "type"=>"Boolean",
                                    "display_name"=>"Null passwords allowed? Input 0 or 1",
                                    "display_type"=>"text_box",
                                    "validator"=>"[0-1]",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Enter 0 if a null password is not allowed, Enter 1 if a null password is allowed",
									"isNull"=>false
                                  },
                                  {
                                    "key"=>"user_whitelist",
                                    "type"=>"csv",
                                    "display_name"=> "User Ids to Exclude",
                                    "display_type"=>"string_array",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[],
                                    "hint"=>"Enter a comma-separated list of user ids"
                                  },
                                  {
                                    "key"=>"password_null_check_enabled",
                                     "type"=>"Boolean",
                                     "display_type"=>"single_select",
                                     "display_name"=> "Enable empty password check",
                                     "validator"=>"",
                                     "units"=>"",
                                     "options"=>[],
                                     "hint"=>"Enable empty(::) password check in /etc/shadow file"
                                  },
								  {
                                    "key"=>"enforce_pamfile_changes",
                                     "type"=>"Boolean",
                                     "display_type"=>"single_select",
                                     "display_name"=> "Enable PAM file changes",
                                     "validator"=>"",
                                     "units"=>"",
                                     "options"=>[],
                                     "hint"=>"Enables check for nullok argument in PAM files"
                                  }
                            ],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
                          }
