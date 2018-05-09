default['cc_policy_aix_failed_login_retries']['policy_map'] = {"components" => [
		{
				identified_by: 'value',
				id: 'os:aix',
				"enforced_by" => [{
															policy: 'policy_aix_failed_login_retries',
															enabled: true}]
		}


]
}
default['cc_policy_aix_failed_login_retries']['ui_metadata']['policy_aix_failed_login_retries'] = {
		policy:"policy_aix_failed_login_retries",
		display_name:"policy_aix_failed_login_retries",
                techspec: '<b>CSD:</b>E.1.1.9<br><b>-ITCS:</b>Section 2.1.1(5.4)<br>',
		attributes:[
						 {key:"retries",
							type:"number",
							display_name:"retries",
							display_type:"text_box",
							validator:"[0-9]*",
							units:"",
							options:"",
							hint:"Number of failed tries allowed before lockout",
							default:"5"},
						 {key:"whitelist",
							type:"CSV",
							display_name:"whitelist",
							display_type:"string_array",
							validator:"",
							units:"",
							options:"",
							hint:"List of users excluded from failed login retries requirements",
							default:"[]"
             }
		],
		validator:'',
		units:'',
		hint:''
}


              
