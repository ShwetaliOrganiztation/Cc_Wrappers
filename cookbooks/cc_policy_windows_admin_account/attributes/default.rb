default['cc_policy_windows_admin_account']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:windows',
        "enforced_by" => [{
                              policy: 'policy_windows_admin_account',
                              enabled: true}]
    }


]
}
						  
# default['policy_windows_admin_account']['create_dummy_administrator_account'] = false
# IF true then rename Administrator
# default['policy_windows_admin_account']['rename_administrator_account'] = false
# default['policy_windows_admin_account']['administrator_account_newname'] = ''
						  

default['cc_policy_windows_admin_account']['ui_metadata']['policy_windows_admin_account'] = {
								policy:"policy_windows_admin_account",
								display_name:"policy_windows_admin_account",
								techspec: '<b>CSD_Win2016:</b>GZ.1.9.2<br>',
								attributes: [
									{key: 'allow_modify_gpo',
                                     type: 'Boolean',
                                     display_type: 'single_select',
                                     display_name: 'Allow GPO Remediation', 
                                     validator: '',
                                     units: '',
                                     options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
                                     hint: 'Allow recipe to modify GPO settings.',
		                             default: false},
									{
										key:"create_dummy_administrator_account",
										type:"boolean",
										display_name:"Create Dummy Administrator Account",
										display_type:"single_select",
										validator:"",
										units:"",
										options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
										hint:"Switch to enable/disable dummy administrator account check"
									},
									{
										key:"rename_administrator_account",
										type:"boolean",
										display_name:"Rename Administrator Account",
										display_type:"single_select",
										validator:"",
										units:"",
										options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
										hint:"Switch to enable/disable renaming administrator account check"
									},
									{
										key:"administrator_account_newname",
										type:"text",
										display_name:"Administrator Account New Name",
										display_type:"text_box",
										validator:"^[a-zA-Z0-9_() `~!@#$%&'^-]*$",
										units:"",
										options:"",
										hint:"Name with which Adminstrator account to be renamed.<br/>Valid User name should not have following characters:<br/><b>\"\\\ / | [ ] : < > , . : ; ? * + =</b>"
									},
								],
								
                            validator:"",
                            units:"",
                            hint:""
					}

              
