default['cc_policy_windows_mcafee_av']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{
                                                policy: 'policy_windows_mcafee_av',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_mcafee_av']['ui_metadata']['policy_windows_mcafee_av'] = {
                            policy: "policy_windows_mcafee_av",
                            display_name: "policy_windows_mcafee_av",
                            techspec: '<b>CSD_Win2008:</b>YO.1.3.1<br><b>-CSD_Win2012:</b>ED.1.3.1<br><b>-CSD_Win2016:</b>Not yet supported<br><b>-ITCS_Win2008:</b>NA<br><b>-ITCS_Win2012:</b>NA<br>',
                                attributes:[
                                  {
                                    key: "av_max_age",
                                    type: "number",
                                    display_name: "McAfee AntiVirus signature Max Age",
                                    display_type: "text_box",
                                    validator: "[0-9]*",
                                    units: "days",
                                    options:[

                                    ],
                                    hint: "If the existing signature is older than the Max Age, it will be updated."
                                  }

                            ],
                            validator: "",
                            units: "",
                            hint: ""
                          }



              
