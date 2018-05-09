default['cc_policy_enforcement']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'cc_policies_linux',
                                                enabled: true}]
                              },
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'cc_policies_aix',
                                                enabled: true}]
                              },
 {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{ 
                                                policy: 'cc_policies_windows',
                                                enabled: true}]
                              },


                             {
                               identified_by: 'value',
                               id: 'ccmysql/state:installed',
                               "enforced_by" => [{ 
                                                policy: 'cc_policies_mysql',
                                                enabled: true}]
                              }


                           
                             ]
                          }
              
