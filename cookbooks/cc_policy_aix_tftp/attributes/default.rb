default['cc_policy_aix_tftp']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_tftp',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_tftp']['ui_metadata']['policy_aix_tftp'] = {
               policy:"policy_aix_tftp",
						   display_name:"policy_aix_tftp",
                           techspec: '<b>CSD:</b>E.1.5.3.1, E.1.5.3.2<br><b>-ITCS:</b>Section 2.1.1(8)<br>',
						   attributes:[
						   {key:"root_dir",
						   type:"text",
						   display_name:"root_dir",
						   display_type:"text_box",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"tftp root directory",
						   default:'/tftpboot'},

						   {key:"allow_dirs",
						   type:"text",
						   display_name:"allow_dirs",
						   display_type:"text_box",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"Provide space separated list of directories to be allowed for tftp access. Ex: '/tmp /var'",
						   default:""
						   },

                                                   {key:"tftp_root_dir_access_perms",
						   type:"complex_hash",
						   display_name:"tftp root dir access perms",
						   display_type:"key_value_pair",
                                                   "attributes" => [{
				                            display_type: "directory_permission"
		                                   }],
						   validator:"",
						   units:"",
						   options:"",
						   hint:"set mode,owner,group access permission for root_dir",
						   default:{ mode: '00775', owner: 'root', group: 'system' }
						   },

                                                   {key:"tftpaccessctl_file_access_perms",
						   type:"complex_hash",
						   display_name:"tftpaccessctl file access perms",
						   display_type:"key_value_pair",
                                                   "attributes" => [{
				                            display_type: "directory_permission"
		                                   }],
						   validator:"",
						   units:"",
						   options:"",
						   hint:"set mode,owner,group access permission for /etc/tftpaccess.ctl",
						   default:{ mode: '00664', owner: 'root', group: 'system' }
						  }
               
			
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
