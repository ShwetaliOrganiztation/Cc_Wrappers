default['cc_policy_windows_symantec_av']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{
                                                policy: 'policy_windows_symantec_av',
                                                enabled: true}]
                              }               

                           
                             ]
                          }


# Default is true, if SEP service is not running, it will start it.
# default['policy_windows_symantec_av']['start_service_if_stopped'] = true


default['cc_policy_windows_symantec_av']['ui_metadata']['policy_windows_symantec_av'] = {
                            policy: "policy_windows_symantec_av",
                            display_name: "policy_windows_symantec_av",
                            techspec: '<b>CSD_Win2008:</b>YO.1.3.1<br><b>-CSD_Win2012:</b>ED.1.3.1<br><b>-CSD_Win2016:</b>Not yet supported<br><b>-ITCS_Win2008:</b>NA<br><b>-ITCS_Win2012:</b>NA<br>',

                                attributes:[
                                  {
                                    key: "start_service_if_stopped",
                                    type: "boolean",
                                    display_name: "Start Service If Stopped",
                                    display_type: "single_select",
                                    validator: "",
                                    units: "",
                                    options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
                                    hint: "Switch to enable/disable starting of the SEP service by recipe"
                                  }

                            ],
                            validator: "",
                            units: "",
                            hint: ""
                          }
