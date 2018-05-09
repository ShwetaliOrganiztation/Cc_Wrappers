default['cc_policy_aix_sudo']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_sudo',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
						  
						  
# default['policy_aix_sudo']['sudo_user_list'] = []
# default['policy_aix_sudo']['sudo_group_list'] = []
# default['policy_aix_sudo']['sudo_user_black_list'] = []
# default['policy_aix_sudo']['sudo_group_black_list'] = []
# default['policy_aix_sudo']['AllowSudoLoggingDisable'] = 'no'						  
						  
						 
						  
						  
default['cc_policy_aix_sudo']['ui_metadata']['policy_aix_sudo'] = {
            policy:"policy_aix_sudo",
						display_name:"policy_aix_sudo",
                        techspec:'<b>CSD:</b>NA<br><b>-ITCS:</b>Section 2.1.1(5.2)<br>',
						attributes:[
						
						{
						key:"sudo_user_list",
						type:"complex_hash",
						display_name:"sudo_user_list",
						display_type: "array_set",
						"attributes" => [{
							display_type: "command_runas_user"
						}],
						validator:"",
						units:"",
						options:"",
						hint:"Mapping of users and their allowed commands",
						default:{}
						},
						{
						key:"sudo_group_list",
						type:"complex_hash",
						display_name:"sudo_group_list",
						display_type: "array_set",
						"attributes" => [{
							display_type: "command_runas_group"
						}],
						validator:"",
						units:"",
						options:"",
						hint:"Mapping of groups and their allowed commands",
						default:{}
						},
						{
						key:"sudo_user_black_list",
						type:"string_array",
						display_name:"sudo_user_black_list",
						display_type:"string_array",
						validator:"",
						units:"",
						options:"",
						hint:"List of users that should be denied sudo - example \"testolduser\"",
						default:[]
						},
						{
						key:"sudo_group_black_list",
						type:"string_array",
						display_name:"sudo_group_black_list",
						display_type:"string_array",
						validator:"",
						units:"",
						options:"",
						hint:"List of groups that should be denied sudo - example \"testoldgrp\"",
						default:[]
						},
						{
						key:"AllowSudoLoggingDisable",
						type:"text",
						display_name:"AllowSudoLoggingDisable",
						display_type:"text_box",
						validator:"^(?:yes|no)$",
						units:"",
						options:"",
						hint:"If set to no, compliance policy prevents sudo logging from being disabled with the !logfile option in /etc/sudo.conf. Values: yes, no",
						default:"no"
						}

					],
            "validator"=>"",
            "units"=>"",
            "hint"=>""
		}


              
