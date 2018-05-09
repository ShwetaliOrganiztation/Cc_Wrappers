default['cc_policy_linux_nntp']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_nntp',
                                                enabled: true}]
                              }


                             ]
                          }


                default['cc_policy_linux_nntp']['ui_metadata']['policy_linux_nntp'] = {
                            "policy"=>"policy_linux_nntp",
                            "display_name"=>"policy_linux_nntp",
                            "techspec"=>'<b>CSD:</b>AD.1.5.6<br><b>-ITCS:</b>Section 2.1.2(8)<br>',

                                "attributes"=>[
                                  {
                                    "key"=>"nntp_host",
                                    "type"=>"text",
                                    "display_name"=>"NNTP Host Name",
                                    "display_type"=>"text_box",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Enter the NNTP Host name"
                                  },
                                  {
                                    "key"=>"cyradm_user",
                                    "type"=>"text",
                                    "display_name"=>"cyradm user",
                                    "display_type"=>"text_box",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Enter the cyradm user Id"
                                  },
                                  {
                                    "key"=>"cyradm_pass",
                                    "type"=>"text",
                                    "display_name"=>"cyradm pass",
                                    "display_type"=>"text_box",
                                    "validator"=>".+",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Enter the cyradm password to authenticate"
                                  },
                                  {
                                    "key"=>"cyradm_path",
                                    "type"=>"text",
                                    "display_name"=>"cyradm path",
                                    "display_type"=>"text_box",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Enter the cyradm path"
                                  },
                                  {
                                    "key"=>"news_groups",
                                    "type"=>"csv",
                                    "display_name"=>"news groups",
                                    "display_type"=>"string_array",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Enter the news groups"
                                  }

                            ],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
                          }








