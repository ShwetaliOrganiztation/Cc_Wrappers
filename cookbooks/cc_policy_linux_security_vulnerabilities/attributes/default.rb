default['cc_policy_linux_security_vulnerabilities']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_security_vulnerabilities',
                                                enabled: true}]
                              }


                             ]
                          }


default['cc_policy_linux_security_vulnerabilities']['ui_metadata']['policy_linux_security_vulnerabilities'] ={
                            "policy"=>"policy_linux_security_vulnerabilities",
                            "display_name"=>"policy_linux_security_vulnerabilities",
                            "techspec"=> '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
                                "attributes"=>[
                                  {
                                    "key"=>"severity",
                                    "type"=>"text",
                                    "display_name"=>"severity",
                                    "display_type"=>"text_box",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Severity of vulnerabilities to attend.",
									"isNull"=>false
                                  },
                                  {
                                    "key"=>"packages",
                                    "type"=>"Boolean",
                                    "display_name"=>"packages",
                                    "display_type"=>"text_box",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Packages to inspect for vulnerabilities."
                                  },
                                  {
                                    "key"=>"exclude_packages",
                                    "type"=>"csv",
                                    "display_name"=>"exclude_packages",
                                    "display_type"=>"string_array",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Packages to exclude from vulnerability inspection."
                                  },
                                  {
                                    "key"=>"include_dependent_packages",
                                    "type"=>"Boolean",
                                    "display_name"=>"include dependent packages",
                                    "display_type"=>"single_select",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"True to include dependent packages of the target packages."
                                  },
                                  {
                                    "key"=>"reboot_if_required",
                                    "type"=>"Boolean",
                                    "display_name"=>"reboot if required",
                                    "display_type"=>"single_select",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Specifies reboot will be required or not. Default is false to not reboot"
                                  }
                            ],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
                          }
