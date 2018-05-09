default['cc_policy_windows_guestaccount_check']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_guestaccount_check',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_windows_guestaccount_check']['ui_metadata']['policy_windows_guestaccount_check'] = {
                            policy:"policy_windows_guestaccount_check",
							display_name:"policy_windows_guestaccount_check",
              techspec: '<b>CSD_Win2008:</b>NA<br><b>-CSD_Win2012:</b>NA<br><b>-CSD_Win2016:</b>NA<br><b>-ITCS_Win2008:</b>Section 3.2<br><b>-ITCS_Win2012:</b>Section 3.2<br>',
							attributes:[

							{key: "include_primarydomain_users",
							type: "boolean",
							display_name: "include primarydomain accounts",
							display_type: "single_select",
							validator: "^(?i)(true|false)$",
							units: "",
							options: "[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
							hint: "If checked, an account's Guests membership will be revoked if its primary group is in the list:" +
							      "<br/>- Domain Users, Users, Administrators, Domain Admins, Enterprise Admins, Power Users," +
							      "<br/>- Backup Operators, Print Operators, Network Configuration Operators, DHCP Administrators," +
							      "<br/>- Account Operators, Server Operators, Group Policy Creator Owners, Schema Admins," +
							      "<br/>- Group Policy Owners, Enterprise Operators, Certificate Service DCOM Access," +
							      "<br/>- Distributed COM Users, Event Log Readers, Performance Log Users, Performance Monitor Users, Eventlog"
							}

                            ],
                            validator:"",
                            units:"",
                            hint:""
                          }
