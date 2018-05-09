default['cc_policies_mysql']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'cc_policy_linux_mysql',
                                                enabled: false}]
                              },
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'cc_policy_aix_mysql',
                                                enabled: true}]
                              },

                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{ 
                                                policy: 'cc_policy_windows_mysql',
                                                enabled: true}]
                              }

                           
                             ]
                          }
