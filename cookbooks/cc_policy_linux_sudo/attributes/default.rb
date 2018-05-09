default['cc_policy_linux_sudo']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_sudo',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
              
default['cc_policy_linux_sudo']['ui_metadata']['policy_linux_sudo'] = {
	policy: 'policy_linux_sudo',
	display_name: 'policy_linux_sudo',
    techspec: '<b>CSD:</b>AD.20.1.2.4<br><b>-ITCS:</b>NA<br>',
	"attributes" => [
		{
			key: "sudo_user_list",
			type: "complex_hash",
			display_type: "array_set",
			"attributes" => [{
				display_type: "command_runas_linux_user"
			}],
			display_name: "Sudo User List",
			validator: "",
			units: "",
			options: [],
			hint: "List of users and allowed commands."
        },
        {
			key: "sudo_group_list",
			type: "complex_hash",
			display_type: "array_set",
			"attributes" => [{
				display_type: "command_runas_linux_group"
			}],
			display_name: "Sudo Group List",
			validator: "",
			units: "",
			options: [],
			hint: "List of groups and allowed commands."
        
        },
        {
			key: "sudo_user_black_list",
			type: "CSV",
			display_type: "string_array",
			display_name: "Sudo user black List",
			validator: "",
			units: "",
			options: [],
			hint: "List of users that should be denied."
        
        },
        {
			key: "sudo_group_black_list",
			type: "CSV",
			display_type: "string_array",
			display_name: "Sudo group black List",
			validator: "",
			units: "",
			options: [],
			hint: "List of groups that should be denied."
        
        },
        {
			key: "AllowSudoLoggingDisable",
			type: "text",
			display_type: "text_box",
			display_name: "Allow sudo logging Disable",
			validator: "^(?:yes|no)$",
			units: "",
			options: "",
			hint: "If set to no, compliance policy prevents sudo logging from being disabled with the !logfile option in /etc/sudo.conf."
        
        }
                 
		
	],
 validator: "",
 units: "",
 hint: ""
}
