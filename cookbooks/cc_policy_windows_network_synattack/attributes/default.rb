default['cc_policy_windows_network_synattack']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_network_synattack',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_network_synattack']['ui_metadata']['policy_windows_network_synattack'] = {
                            policy: "policy_windows_network_synattack",
                            display_name: "policy_windows_network_synattack",

                                attributes:[
                                  {
                                    key: "SynAttackProtect",
                                    type: "number",
                                    display_name: "Protect against Network Synattack",
                                    display_type: "text_box",
                                    validator: "[0-1]",
                                    units: "",
                                    options: [

                                    ],
                                    hint: "Enter 1 if protection is turned on against a network synattack, Enter 0 if no protection is needed"
                                  }

                            ],
                            validator: "",
                            units: "",
                            hint: ""
                          }



              
