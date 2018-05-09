
default['cc_policy_aix_audit_tcim']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_audit_tcim',
                                                enabled: true}]
                              }               
                           
                             ]
                          }
default['cc_policy_aix_audit_tcim'] ['ui_metadata'] ['policy_aix_audit_tcim'] = {
                            policy:"policy_aix_audit_tcim",
							display_name:"policy_aix_audit_tcim",
							attributes: [
							{
								key:"enforce_etc_rc_auditing",
								type:"boolean",
								display_name:"enforce_etc_rc_auditing",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
								hint:"Ensure that the required auditing is enabled in /etc/rc",
								default:"true"
							},{
								key:"enforce_bincmds_in_auditbin",
								type:"boolean",
								display_name:"enforce_bincmds_in_auditbin",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
								hint:"Ensure that the back-end commands used by the auditbin daemon to flush bin files to the audit trail are defined in /etc/							security/audit/bincmds",
								default:"true"
							},{
								key:"enforce_stanzas",
								type:"boolean",
								display_name:"enforce_stanzas",
								display_type:"single_select",
								validator:"^(?i)(true|false)$",
								units:"",
								options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
								hint:"Ensure that stanzas are updated",
								default:"true"
							},{
								key:"required_stanzas",
								type:"complex_hash",
								display_name:"required_stanzas",
								display_type:"object_set",
								"attributes" => [{
									display_type: "object_set",
									"attributes" => [{

											display_type: "key_value_pair",
											"attributes" => [{
												display_type: "string"
											}]
									}]
								}],
								validator:"",
								units:"",
								options:"",
								hint:"List of required stanzas, parameter names and values"
							}],
						     	validator:'',
						    	units:'',
						   	hint:''
							}
              
