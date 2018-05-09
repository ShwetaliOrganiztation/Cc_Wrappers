default['cc_policy_windows_password_policy']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_password_policy',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_password_policy']['ui_metadata']['policy_windows_password_policy'] = {
                            policy:"policy_windows_password_policy",
                            display_name:"policy_windows_password_policy",
techspec:'<b>CSD_Win2008:</b>YO.1.1.1, YO.1.1.2, YO.1.1.3, YO.1.1.4, YO.1.1.4.1, YO.1.1.5, YO.1.1.6, YO.1.1.7, YO.1.1.8 <br><b>-CSD_Win2012:</b>ED.1.1.1, ED.1.1.2, ED.1.1.3, ED.1.1.4, ED.1.1.4.1, ED.1.1.5, ED.1.1.6, ED.1.1.7, ED.1.1.8<br><b>-CSD_Win2016:</b>GZ.1.1.1, GZ.1.1.2, GZ.1.1.3, GZ.1.1.4, GZ.1.1.5, GZ.1.1.6, GZ.1.1.7, GZ.1.1.8, GZ.1.1.9<br><b>-ITCS_Win2008:</b>Section 2.1, 5.4<br><b>-ITCS_Win2012:</b>Section 2.1, 5.4<br>',
                                attributes:[
                                  {
                                            key: 'allow_modify_gpo',
                                            type: 'Boolean',
                                            display_type: 'single_select',
                                            display_name: 'Allow GPO Remediation',
                                            validator: '',
                                            units: '',
                                            options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
                                            hint: 'Allow recipe to modify GPO settings.',
                                            default: false
                                  },
                                  {
                                    key:"minage",
                                    type:"number",
                                    display_name:"Minimum Age of Password",
                                    display_type:"text_box",
                                    validator:"[0-9]*",
                                    units:"days",
                                    options:[

                                    ],
                                    hint:"Enter minimum age of password"
                                  },
                           
                                  {
                                    key:"maxage",
                                    type:"number",
                                    display_name:"Maximum Age of Password",
                                    display_type:"text_box",
                                    validator:"[0-9]*",
                                    units:"days",
                                    options:[

                                    ],
                                    hint:"Enter the maximum age of the password"
                                  },

                          
                                  {
                                    key:"retries",
                                    type:"number",
                                    display_name:"Account Lockout Threshold",
                                    display_type:"text_box",
                                    validator:"[0-9]*",
                                    units:"",
                                    options:[

                                    ],
                                    hint:"Number of failed logon attempts that will cause a user account to be locked out, https://technet.microsoft.com/pt-pt/library/hh994574(v=ws.10).aspx"
                                  },

                           
                                  {
                                    key:"history",
                                    type:"number",
                                    display_name:"Number of historical passwords",
                                    display_type:"text_box",
                                    validator:"[0-9]*",
                                    units:"",
                                    options:[

                                    ],
                                    hint:"Number of historical passwords that the new password cannot match"
                                  },

                            
                                  {
                                    key:"duration",
                                    type:"number",
                                    display_name:"Account Lockout Duration",
                                    display_type:"text_box",
                                    validator:"[0-9]*",
                                    units:"minutes",
                                    options:[

                                    ],
                                    hint:"Number of minutes that a locked-out account remains locked out before automatically becoming unlocked, https://technet.microsoft.com/pt-pt/library/hh994569(v=ws.10).aspx"
                                  },

                            
                                  {
                                    key:"minlen",
                                    type:"number",
                                    display_name:"Minimum Length of Password",
                                    display_type:"text_box",
                                    validator:"[0-9]*",
                                    units:"characters",
                                    options:[

                                    ],
                                    hint:"Enter minimum length of password"
                                  },

                          
                                  {
                                    key:"lockwindow",
                                    type:"number",
                                    display_name:"Reset Account Lockout Counter After",
                                    display_type:"text_box",
                                    validator:"[0-9]*",
                                    units:"minutes",
                                    options:[

                                    ],
                                    hint:"Number of minutes that must elapse from the time a user fails to log on before the failed logon attempt counter is reset to 0, https://technet.microsoft.com/pt-pt/library/hh994568(v=ws.10).aspx"
                                  },
                                  
                                  {
                                    "key" => "enforce_reversible_encryption",
                                    "type" => "boolean",
                                    "display_name" => "Enforce reversible encryption",
                                    "display_type" => "single_select",
                                    "validator" => "",
                                    "units" => "",
                                    "options" => "[{ \"key\": \"true\", \"value\": \"true\"}, { \"key\": \"false\", \"value\: \"false\"}]",
                                    "hint" => "on/off enforcement of reversible encryption"
                                  },
                                  
                                  {
                                    key:"store_passwords_using_reversible_encryption",
                                    type:"text",
                                    display_name:"Store passwords using reversible encryption",
                                    display_type:"text_box",
                                    validator:"^Enabled|Disabled$",
                                    units:"",
                                    options:"",
                                    hint:"Store passwords using reversible encryption input Enabled/Disabled",
                                    default:"Disabled"
                                  },
                                  {
                                      key:"password_must_meet_complexity_requirements",
                                      type:"text",
                                      display_name:"Password must meet complexity requirements",
                                      display_type:"text_box",
                                      validator:"^Enabled|Disabled$",
                                      units:"",
                                      options:"",
                                      hint:"Password must meet complexity requirements input Enabled/Disabled",
                                      default:"Enabled"
                                  }
                            ],
                          validator:"",
                            units:"",
                            hint:""
                          }



              
