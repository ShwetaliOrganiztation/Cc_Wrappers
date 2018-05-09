default['cc_policy_aix_duplicate_gid']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_duplicate_gid',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
						  
						  
# Provide groups to be excluded from remediation.
#default['policy_aix_duplicate_gid']['group_whitelist'] = []

# Switch to enable/disable policy duplicate GIDs check
#default['policy_aix_duplicate_gid']['check_groups'] = true
						  

						  
						  
default['cc_policy_aix_duplicate_gid']['ui_metadata']['policy_aix_duplicate_gid'] = {
               policy:"policy_aix_duplicate_gid",
						   display_name:"policy_aix_duplicate_gid",
techspec: '<b>CSD:</b>E.1.1.1.1<br><b>-ITCS:</b>Section 2.1.1(1.1)<br>',
						   attributes:[
						   {
						   key:"group_whitelist",
						   type:"CSV",
						   display_name:"Group White List",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of excluded groups on which policy duplicate GIDs check is not going to be enforced.",
						   default:""
						   },
						   {
						   key:"check_groups",
						   type:"boolean",
						   display_name:"Check Groups",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Enables the checking and remediation of duplicate gid present on the system.",
						   default:true
						   }
			
						],
                           "validator"=>"",
                           "units"=>"",
                           "hint"=>""
					}


              
