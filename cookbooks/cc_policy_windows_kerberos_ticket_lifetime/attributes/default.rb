default['cc_policy_windows_kerberos_ticket_lifetime']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_kerberos_ticket_lifetime',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_kerberos_ticket_lifetime']['ui_metadata']['policy_windows_kerberos_ticket_lifetime'] = {
                            policy: "policy_windows_kerberos_ticket_lifetime",
							display_name: "policy_windows_kerberos_ticket_lifetime",
              techspec: '<b>CSD_Win2008:</b>YO.1.7.2<br><b>-CSD_Win2012:</b>ED.1.7.2<br><b>-CSD_Win2016:</b>GZ.1.7.1, GZ.1.7.2, GZ.1.7.3<br><b>-ITCS_Win2008:</b>Section 2.2<br><b>-ITCS_Win2012:</b>Section 2.2<br>',
							attributes: [
							
							{key: "lifetime_ticket_value",
							  type: "number",
							  display_name: "Maximum lifetime of user ticket (hours) for Windows 2008/2012",
							  display_type: "text_box",
							  validator: "[0-9]|[1-9][0-9]{1,4}",
							  units: "",
							  options: "",
							  hint: "Maximum lifetime of user ticket for Windows 2008 & 2012.<br/><br/>Range: 0 - 99999"
							},
							{key: "lifetime_ticket_value_2016",
							  type: "number",
							  display_name: "Maximum lifetime of user ticket (hours) for Windows 2016",
							  display_type: "text_box",
							  validator: "[0-9]|[1-9][0-9]{1,4}",
							  units: "",
							  options: "",
							  hint: "Maximum lifetime of user ticket for Windows 2016.<br/><br/>Range: 0 - 99999"
							},
							{key: "lifetime_service_value_2016",
							  type: "number",
							  display_name: "Maximum lifetime of service ticket (minutes) for Windows 2016",
							  display_type: "text_box",
							  validator: "0|[1-9][0-9]{1,4}",
							  units: "",
							  options: "",
							  hint: "Maximum lifetime of service ticket for Windows 2016.<br/><br/>Range: 10 - 99999, or 0 for 'do not expire'.<br/><br/>It can not exceed Maximum lifetime of user ticket for Windows 2016.<br/>If user ticket is 10 (hours), this value can not exceed 600 (minutes)."
							},
							{key: "lifetime_renew_value_2016",
							  type: "number",
							  display_name: "Maximum lifetime of user ticket renew (days) for Windows 2016",
							  display_type: "text_box",
							  validator: "[0-9]|[1-9][0-9]{1,4}",
							  units: "",
							  options: "",
							  hint: "Maximum lifetime of user ticket renew for Windows 2016.<br/><br/>Range: 0 - 99999"
							}

                           ],
                            validator:"",
                            units:"",
                            hint:""
                          }

              
