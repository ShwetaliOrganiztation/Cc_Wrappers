default['cc_policy_aix_dict_words']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{
                                                policy: 'policy_aix_dict_words',
                                                enabled: true}]
                              }
                             ]
                          }

# To enable policy linux dict words
# default['policy_aix_dict_words'] ['config_dict_is_enabled'] = true

# Value to update default stanza for dictionlist attribute
# default['policy_aix_dict_words'] ['default_stanza_value'] = '/usr/share/dict/words'

default['cc_policy_aix_dict_words']['ui_metadata']['policy_aix_dict_words'] = {
                            policy:"policy_aix_dict_words",
							display_name:"policy_aix_dict_words",
techspec: '<b>CSD:</b>E.1.1.5.2<br><b>-ITCS:</b>Section 2.1.1(2.1)<br>',
	attributes:[
								{
									key: "config_dict_is_enabled",
									display_name: "Config Dict Is Enabled",
									type: "boolean",
									display_type: "single_select",
									validator: "",
									units: "",
									hint: "Enable or disable the policy if it set to true or false",
									options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
									default: "true"
								},
								{
									key: "default_stanza_value",
									display_name: "Default Stanza Value",
									type: "text",
									display_type: "text_box",
									validator: "",
									units: "",
									hint: "Enter the dictionary file including path to be configured for dictionlist attribute",
									default: "/usr/share/dict/words"
								},
                                                                {
									key: "whitelist_users_to_exclude",
									display_name: "Whitelist users stanza to exclude",
									type: "CSV",
									display_type: "string_array",
									validator: "",
									units: "",
									hint: "Enter the list of user stanza from /etc/security/user file to exclude",
									default: "[]"
								}
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}
