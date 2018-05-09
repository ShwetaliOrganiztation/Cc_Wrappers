default['cc_policy_windows_event_log_guest_access']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_event_log_guest_access',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_event_log_guest_access']['ui_metadata']['policy_windows_event_log_guest_access'] = {

           policy: "policy_windows_event_log_guest_access",
           display_name: "policy_windows_event_log_guest_access",
           techspec: '<b>CSD_Win2008:</b>YO.1.8.22, YO.1.8.23, YO.1.8.24, YO.1.8.25<br><b>-CSD_Win2012:</b>ED.1.8.24,ED.1.8.25,ED.1.8.26,ED.1.8.27<br><b>-CSD_Win2016:</b>NA<br><b>-ITCS_Win2008:</b>Section 5.1<br><b>-ITCS_Win2012:</b>Section 5.1<br>',
             attributes: [{
                                    key: 'allow_modify_gpo',
                                    type: 'Boolean',
                                    display_type: 'single_select',
                                    display_name: 'Allow GPO Remediation',
                                    validator: '',
                                    units: '',
                                    options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
                                    hint: 'Allow recipe to modify GPO settings.',
                                    default: false
                                },{
                                    key: "app",
                                    type: "number",
                                    display_name: "Enable App",
                                    display_type: "text_box",
                                    validator: "[0-1]",
                                    units: "",
                                    hint: "Restricts Windows guest account access to the Application Event Log. Valid Values 1 (Enable) or 0 (Disable)"
                                  },{
                                    key: "system",
                                    type: "number",
                                    display_name: "Enable system",
                                    display_type: "text_box",
                                    validator: "[0-1]",
                                    units: "",
                                    options: [

                                    ],
                                    hint: "Restricts Windows guest account access to the System Event Log. Valid Values 1 (Enable) or 0 (Disable)"
                                  },{
                                    key: "security",
                                    type: "number",
                                    display_name: "Enable security",
                                    display_type: "text_box",
                                    validator: "[0-1]",
                                    units: "",
                                    options: [

                                    ],
                                    hint: "Restricts Windows guest account access to the Security Event Log. Valid Values 1 (Enable) or 0 (Disable)"
                                  },{
                                    key: "dns",
                                    type: "number",
                                    display_name: "Enable dns",
                                    display_type: "text_box",
                                    validator: "[0-1]",
                                    units: "",
                                    options: [

                                    ],
                                    hint: "Restricts Windows guest account access to the DNS Event Log if the server is acting as a DNS Server, otherwise this will be ignored. Valid Values 1 (Enable) or 0 (Disable)"
                                  }

                            ],
                           validator: "",
                            units: "",
                            hint: ""
                          }




              
