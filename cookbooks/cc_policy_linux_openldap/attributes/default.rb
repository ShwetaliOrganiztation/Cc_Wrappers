default['cc_policy_linux_openldap']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_openldap',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_linux_openldap']['ui_metadata']['policy_linux_openldap'] = {
policy: 'policy_linux_openldap',
display_name: 'policy_linux_openldap',
techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
"attributes" =>[
			{	key: "pwdMaxAge",
				display_name: "Password Maximum Age",
				type: "text",
				display_type: "text_box",
				validator: "[0-9]*",
				units: "days",
				hint: "Enter the maximum age of the password"
			},
			{	key: "pwdMinLength",
				display_name: "Password Minimum Length",
				type: "text",
				display_type: "text_box",
				validator: "[0-9]*",
				units: "",
				hint: "Enter the minimum length of the password"
			},
			{	key: "pwdMinAge",
				display_name: "Password Minimum Age",
				type: "text",
				display_type: "text_box",
				validator: "[0-9]*",
				units: "days",
				hint: "Enter the minimum age of the password"
			},
			{	key: "pwdInHistory",	
				display_name: "Password in History?",
				type: "text",
				display_type: "text_box",
				validator: "[0-9]*",
				units: "",
				hint: "This attribute controls the number of passwords that are maintained in a list of previously used passwords for the account(a password history)."
			},
			{	key: "pwdMustChange",	
				display_name: "Password Must Change",
				type: "text",
				display_type: "text_box",
				validator: "^(TRUE|FALSE)$",
				units: "",
				hint: "This attribute controls whether the user must change their password if set to true."
			},
			{	key: "pwdLockout",				
				display_name: "Password Locked Out?",
				type: "text",
				display_type: "text_box",
				validator: "^(TRUE|FALSE)$",
				units: "",
				hint: "If the value of this attribute is TRUE then the account is locked - no further bind attempts are allowed(when an account has had more consecutive failed bind attempts with invalid passwords than is defined by <b>pwdMaxFailure</b>). If the value is FALSE the account is not locked and any number of consecutive invalid password attempts are allowed."
			},
			{	key: "pwdMaxFailure",	
				display_name: "Password logins - Maximum Failures",
				type: "text",
				display_type: "text_box",
				validator: "[0-9]*",
				units: "occurrences",
				hint: "This attribute controls how many consecutive password failures are allowed before the action defined by pwdLockout is taken."
			},
			{	key: "pwdLockoutDuration",	
				display_name: "Password Lockout Duration",
				type: "text",
				display_type: "text_box",
				validator: "[0-9]*",
				units: "days",
				hint: "This attribute controls how long an account remains locked and is only relevant if pwdLockout is TRUE."
			},
	        {
		        key: "conf_path_override",
		        display_name: "slapd Configuration file",
		        type: "text",
		        display_type: "text_box",
		        validator: "",
		        units: "",
		        hint: "Location of the slapd service configuration file.If empty, default location will be one of /usr/local/etc/openldap/sladp.conf or /etc/openldap/ldap.conf or /etc/openldap/sladp.conf"
	       },
	       {
		       key: "program_file_path_override",
		       display_name: "openldap program file path",
		       type: "text",
		       display_type: "text_box",
		       validator: "",
		       units: "",
		       hint: "Path of openldap program files or directories "
	      }
		
		],
 validator: "",
 units: "",
 hint: ""
}
