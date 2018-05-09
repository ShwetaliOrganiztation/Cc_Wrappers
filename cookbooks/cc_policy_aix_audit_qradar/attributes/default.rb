default['cc_policy_aix_audit_qradar']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_audit_qradar',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_audit_qradar'] ['ui_metadata'] ['policy_aix_audit_qradar'] = {
                            policy: 'policy_aix_audit_qradar',
                           display_name: 'policy_aix_audit_qradar',
							'attributes' => [{
						        	key:"enforce_audit_entries",
								type:"boolean",
								display_name:"enforce_audit_entries",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
								hint:"Ensure that the required audit entries are present in /etc/syslog.conf",
								default:"false"
							},{
								key:"enforce_streamcmds_file",
								type:"boolean",
								display_name:"enforce_streamcmds_file",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
								hint:"Ensure that correct audit stream command are defined in the /etc/security/audit/streamcmds file",
								default:"true"
							},{
								key:"enforce_audit_daemon_starts_booting",
								type:"boolean",
								display_name:"enforce_audit_daemon_starts_booting",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
								hint:"Ensure that the audit daemon starts during the booting process",
								default:"false"
							},{
								key:"enforce_bincmds_in_auditbin",
								type:"boolean",
								display_name:"enforce_bincmds_in_auditbin",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
								hint:"Ensure that the back-end commands used by the auditbin daemon to flush bin files to the audit trail are defined in /etc/security/audit/bincmds",
								default:"true"
							},{
								key:"enforce_stanzas",
								type:"boolean",
								display_name:"enforce_stanzas",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
								hint:"Ensure that stanzas are updated",
								default:"false"
							},{
								key:"required_stanzas",
								type:"complex_hash",
								display_name:"required_stanzas",
								display_type:"object_set",
								"attributes" => [{
									display_type: "object_set",
									"attributes" => [{
                      isNull: false,
											display_type: "key_value_pair",
											"attributes" => [{
												display_type: "string"
											}]
									}]
								}],
								validator:"",
								units:"",
								options:"",
								hint:"List of required stanzas, parameter names and values",
							}],
                            validator:'',
                            units:'',
                            hint:''
							}


              
