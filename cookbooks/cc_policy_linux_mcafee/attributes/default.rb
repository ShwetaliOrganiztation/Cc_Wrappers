default['cc_policy_linux_mcafee']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_mcafee',
                                                enabled: false}]
                              }               

                           
                             ]
                          }

# default['policy_linux_mcafee']['start_if_stopped'] = false

default['cc_policy_linux_mcafee']['ui_metadata']['policy_linux_mcafee'] = {
                            policy: "policy_linux_mcafee",
                            display_name: "policy_linux_mcafee",
                            techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',

                                attributes:[
                                  {
                                    key: "start_if_stopped",
                                    type: "boolean",
                                    display_name: "start if stopped",
                                    display_type: "single_select",
                                    validator: "",
                                    units: "",
                                    options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
                                    hint: "Start mcafee service if stopped"
                                  }

                            ],
                            validator: "",
                            units: "",
                            hint: ""
                          }
