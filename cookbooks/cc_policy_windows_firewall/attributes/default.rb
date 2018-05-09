default['cc_policy_windows_firewall']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_firewall',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_firewall']['ui_metadata']['policy_windows_firewall'] = {
                            policy: "policy_windows_firewall",
							display_name: "policy_windows_firewall",
							attributes: [ 

							{key: "create_icmp_rule",
							type: "number",
							display_name: "create_icmp_rule",
							display_type: "text_box",
							validator: "[0-1]",
							units: "",
							options: "[{\"key\": \"disable\", \"value\": \"0\"}, {\"key\": \"enable\": \"1\"}]",
							hint: "Enable/disable firewall rule for blocking Inbound traffic containing ICMP traffic"},
							
							
							{key: "create_snmp_rule",
							type: "number",
							display_name: "create_snmp_rule",
							display_type: "text_box",
							validator: "[0-1]",
							units: "",
							options: "[{\"key\": \"disable\", \"value\": \"0\"}, {\"key\": \"enable\": \"1\"}]",
							hint: "Enable/disable firewall rule for blocking Inbound traffic containing SNMP traffic"},
							
							
							{key: "create_pvtip_rule",
							type: "number",
							display_name: "create_pvtip_rule",
							display_type: "text_box",
							validator: "[0-1]",
							units: "",
							options: "[{\"key\": \"disable\", \"value\": \"0\"}, {\"key\": \"enable\": \"1\"}]",
							hint: "Enable/disable firewall rule for blocking Inbound and Outbound private IP ranges"},
							
							
							{key: "create_iproute_rule",
							type: "number",
							display_name: "create_iproute_rule",
							display_type: "text_box",
							validator: "[0-1]",
							units: "",
							options: "{\"key\": \"disable\", \"value\": \"0\"}, {\"key\": \"enable\": \"1\"}]",
							hint: "Enable/disable firewall rule for blocking packets containing IP source routing information"},
							
							
							{key: "tcp_out_sourceiprange_blocklist",
							type: "complex_hash",
							display_name: "tcp_out_sourceiprange_blocklist",
							display_type: "csv",
							validator: "",
							units: "",
							options: "",
							hint: "Private IP address range to block outbound traffic using source address"},
							
							
							{key: "tcp_in_sourceiprange_blocklist",
							type: "complex_hash",
							display_name: "tcp_in_sourceiprange_blocklist",
							display_type: "csv",
							validator: "",
							units: "",
							options: "",
							hint: "Private IP address range to block inblound traffic using source address"},
							
							
							{key: "registry_key_path",
							type: "complex_hash",
							display_name: "registry_key_path",
							display_type: "text_box",
							validator: "",
							units: "",
							options: "",
							hint: "Registry Path for controlling packets containing IP source routing information"},
							
							
							{key: "registry_key_name",
							type: "complex_hash",
							display_name: "registry_key_name",
							display_type: "text_box",
							validator: "",
							units: "",
							options: "",
							hint: "Registry Key name for controlling packets containing IP source routing information"},
							
							
							{key: "registry_key_data",
							type: "number",
							display_name: "registry_key_data",
							display_type: "text_box",
							validator: "[0-9]*",
							units: "",
							options: "",
							hint: "Registry Key value for controlling packets containing IP source routing information"},
							
							
							{key: "enable_custom_rules",
							type: "number",
							display_name: "enable_custom_rules",
							display_type: "text_box",
							validator: "[0-1]",
							units: "",
							options: "[{\"key\": \"disable\", \"value\": \"0\"}, {\"key\": \"enable\": \"1\"}]",
							hint: "Enable/disable user defined rule creation"},
							
							
							{key: "rules",
							type: "complex_hash",
							display_name: "Rules:"\
							"<br/>Of the rule, 'enable' key could have value: yes/no."\
							"<br/>If 'enable' key has empty value, the rule will be ignored.",
							display_type: "object_set",
							attributes: [{
								display_type: "object_set",
								attributes: [{
									display_type: "key_value_pair",
									attributes: [{
										display_type: "string"
									}]
								}]
							}],
							validator: "",
							units: "",
							options: "",
							hint: "Hash of parameters for creating user defined rules."},


							{key: "enable_custom_rules_delete",
							type: "number",
							display_name: "enable_custom_rules_delete",
							display_type: "text_box",
							validator: "[0-1]",
							units: "",
							hint: "Enter 1 to enable firewall rule deletion; enter 0 if not to."},


							{key:"rules_delete",
							type:"CSV",
							display_name:"Firewall rules to delete",
							display_type:"string_array",
							validator:"",
							units:"",
							options:"",
							hint:"The rules will be deleted only if enable_custom_rules_delete is 1."}

                            ],
                            validator: "",
                            units: "",
                            hint: ""
                          }

              
