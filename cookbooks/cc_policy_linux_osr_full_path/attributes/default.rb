default['cc_policy_linux_osr_full_path']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_osr_full_path',
                                                enabled: true}]
                              }


                             ]
                          }

# default['policy_linux_osr_full_path']['extra_path'] = []
# default['policy_linux_osr_full_path']['priv_gid_ranges'] = [{ 'min' => 101, 'max' => 199 }]
# default['policy_linux_osr_full_path']['group_whitelist'] = []
# default['policy_linux_osr_full_path']['is_perm_normalize'] = true
# default['policy_linux_osr_full_path']['priv_gid_ranges_rhel_5_and_6'] = [{ 'min' => 101, 'max' => 499 }]
# default['policy_linux_osr_full_path']['priv_gid_ranges_debian_5'] = [{ 'min' => 101, 'max' => 199 }]
# default['policy_linux_osr_full_path']['priv_gid_ranges_sles_10'] = [{ 'min' => 101, 'max' => 499 }]
# default['policy_linux_osr_full_path']['priv_gid_ranges_rhel_7'] = [{ 'min' => 101, 'max' => 999 }]
# default['policy_linux_osr_full_path']['priv_gid_ranges_debian_6'] = [{ 'min' => 101, 'max' => 999 }]
# default['policy_linux_osr_full_path']['is_gid_normalize'] = true
# default['policy_linux_osr_full_path']['priv_osr_uid'] = {'default' => {owner: 'root', group: 'root'}}


    default['cc_policy_linux_osr_full_path']['ui_metadata']['policy_linux_osr_full_path'] = {
                            "policy"=>"policy_linux_osr_full_path",
                            "display_name"=>"policy_linux_osr_full_path",
							"techspec"=>'<b>CSD:</b>AD.1.8.13.2, AD.1.8.13.3, AD.1.8.13.4, AD.1.8.14.1, AD.1.8.14.2, AD.1.8.14.3, AD.1.8.15.1, AD.1.8.15.2, AD.1.8.15.3, AD.1.8.17.1, AD.1.8.17.2, AD.1.8.17.3, AD.1.8.18.2, AD.1.8.18.3, AD.1.8.19.2, AD.1.8.19.3, AD.1.8.20.1, AD.1.8.20.2, AD.1.8.20.3, AD.1.8.21.1, AD.1.8.21.2, AD.1.8.21.3, AD.1.8.22.1, AD.1.8.22.2, AD.1.8.22.3, AD.1.8.22.4<br><b>-ITCS:</b>Section 2.1.2(5.1)<br>',
                                "attributes"=>[
                                  {
                                    "key"=>"extra_path",
                                    "type"=>"csv",
                                    "display_name"=>"Extra paths",
                                    "display_type"=>"string_array",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Extra paths to resolve full paths of commands in cron job.Ensure that each entry specifies the folder path of the file/command/script to be executed"
                                  },
								  {
                                    "key"=>"group_whitelist",
                                    "type"=>"CSV",
                                    "display_name"=>"Group White List",
                                    "display_type"=>"string_array",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>[

                                    ],
                                    "hint"=>"Group names to be excluded from remediation."
                                  },
								  {
                                    "key"=>"is_perm_normalize",
                                    "type"=>"boolean",
                                    "display_name"=>"Is Normalized",
                                    "display_type"=>"single_select",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
                                    "hint"=>"Enable to apply permission normalization on files/scripts present in cron entries."
                                  },
                                  {
                                    "key"=>"is_gid_normalize",
                                    "type"=>"boolean",
                                    "display_name"=>"Is GID Normalized",
                                    "display_type"=>"single_select",
                                    "validator"=>"",
                                    "units"=>"",
                                    "options"=>"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
                                    "hint"=>"Enable to apply group normalization on the files/scripts in cron entries."
                                  },
                                  {
                                  	"key"=> "priv_osr_uid",
		                            "display_name"=> "Default privileged user id and group",
		                            "type"=> "complex_hash",
		                            "display_type"=> "object_set",
		                            "attributes" => [{
			                            display_type: "key_value_pair",
			                            "attributes" => [{
				                            display_type: "directory_permission"
			                            }]
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "Input the privileged user id and group that will be set for an OSR if an OSR is not owned by any privileged user or group",
                                    default:{ mode: '0755', owner: 'root', group: 'root' }
		                          },
								  {
                                  	"key"=> "priv_gid_ranges",
		                            "display_name"=> "Default privileged user id and group ranges",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries.",
                                    default:[{ 'min' => 101, 'max' => 199 }]
		                          },
								  {
                                  	"key"=> "priv_gid_ranges_rhel_5_and_6",
		                            "display_name"=> "Default privileged user id and group ranges rhel_5_and_6",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for RedHat 5 and RedHat 6.",
                                    default:[{ 'min' => 101, 'max' => 499 }]
		                          },
								  {
                                  	"key"=> "priv_gid_ranges_debian_5",
		                            "display_name"=> "Default privileged user id and group ranges debian_5",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for debian 5.",
                                    default:[{ 'min' => 101, 'max' => 199 }]
		                          },
								  {
                                  	"key"=> "priv_gid_ranges_sles_10",
		                            "display_name"=> "Default privileged user id and group ranges sles_10",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for SUSE 10.",
                                    default:[{ 'min' => 101, 'max' => 499 }]
		                          },
								  {
                                  	"key"=> "priv_gid_ranges_sles_11",
		                            "display_name"=> "Default privileged user id and group ranges sles_11",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for SUSE 11.",
                                    default:[{ 'min' => 101, 'max' => 499 }]
		                          },
								  {
                                  	"key"=> "priv_gid_ranges_sles_12",
		                            "display_name"=> "Default privileged user id and group ranges sles_12",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for SUSE 12.",
                                    default:[{ 'min' => 101, 'max' => 499 }]
		                          },
								  {
                                  	"key"=> "priv_gid_ranges_rhel_7",
		                            "display_name"=> "Default privileged user id and group ranges rhel_7",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for RedHat 7.",
                                    default:[{ 'min' => 101, 'max' => 999 }]
		                          },
								  {
                                  	"key"=> "priv_gid_ranges_debian_6",
		                            "display_name"=> "Default privileged user id and group ranges debian_6",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for debian 6.",
                                    default:[{ 'min' => 101, 'max' => 999 }]
		                          },
                              {
                                "key"=> "priv_gid_ranges_debian_7",
		                            "display_name"=> "Default privileged user id and group ranges debian_7",
		                            "type"=> "complex_hash",
		                            "display_type"=> "array_set",
		                            "attributes" => [{
			                            display_type: "row_objects",
										"options"=> "min,max",
										"display_name"=> "Min,Max"
		                            }],
		                            validator: "",
		                            units: "",
		                            hint: "List of allowed groups for files/script present in the cron entries for debian 7.",
                                    default:[{ 'min' => 101, 'max' => 999 }]
		                          }
                            ],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
                          }
