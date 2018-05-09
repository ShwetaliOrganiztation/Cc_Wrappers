default['cc_policy_aix_pass_min_len']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_pass_min_len',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_pass_min_len']['ui_metadata']['policy_aix_pass_min_len'] = {
               policy:"policy_aix_pass_min_len",
						   display_name:"policy_aix_pass_min_len",
techspec: '<b>CSD:</b>E.1.1.4, E.1.1.5.0, E.1.1.6.0<br><b>-ITCS:</b>Section 2.1.1(2.1)<br>',
						   attributes:[
						   

						   {key:"minlen",
						   type:"text",
						   display_name:"minlen",
						   display_type:"text_box",
						   validator:"[0-9]*",
						   units:"",
						   options:"",
						   hint:"Minimum Password Length",
						   default:"8"},
                           
                           {key:"enforce_minalpha_minother",
						   type:"boolean",
						   display_name:"Enforce alphabetic and other characters",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Enforce user to have alphabetic and other characters in the password",
						   default:true},
			
						   {key:"requirealpha",
						   type:"text",
						   display_name:"minimum alpha characters",
						   display_type:"text_box",
						   validator:"[0-9]*",
						   units:"",
						   options:"",
						   hint:"Minimum alpha characters required in passwords",
						   default:"1"},
                                                 
						   {key:"requireother",
						   type:"text",
						   display_name:"minimum other characters",
						   display_type:"text_box",
						   validator:"[0-9]*",
						   units:"",
						   options:"",
						   hint:"Minimum other characters required in passwords",
						   default:"1"},

                           {key:"enforce_optional_password_requirements",
						   type:"boolean",
						   display_name:"Enforce optional password parameters",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Enforce user password to have optional parameters like minupper, minlower, minspecial and/or mindigit",
						   default:false},                           

						   {key:"requireupper",
						   type:"text",
						   display_name:"minimum upper alpha",
						   display_type:"text_box",
						   validator:"[0-9]*",
						   units:"",
						   options:"",
						   hint:"Minimum upper case characters required in passwords",
						   default:"0"},
						   
						   {key:"requirelower",
						   type:"text",
						   display_name:"minimum lower alpha",
						   display_type:"text_box",
						   validator:"[0-9]*",
						   units:"",
						   options:"",
						   hint:"Minimum lower case characters required in passwords",
						   default:"1"},
						   
						   {key:"requirespecial",
						   type:"text",
						   display_name:"minimum special character",
						   display_type:"text_box",
						   validator:"[0-9]*",
						   units:"",
						   options:"",
						   hint:"Minimum special characters required in passwords",
						   default:"1"},
						   
						   {key:"requirenumeric",
						   type:"text",
						   display_name:"minimum numeric characters",
						   display_type:"text_box",
						   validator:"[0-9]*",
						   units:"",
						   options:"",
						   hint:"Minimum numeric characters required in passwords",
						   default:"1"},

						   {key:"whitelist",
						   type:"string_array",
						   display_name:"whitelist",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of users excluded from password minimum length requirements",
                           default:[]},			  
                           
                           {key:"exempt_accounts_without_shell",
						   type:"boolean",
						   display_name:"exempt_accounts_without_shell",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Exempts user accounts with their shell set to null or /bin/false from minimum length requirements",
						   default:true},

						   {key:"exempt_locked_accounts",
						   type:"boolean",
						   display_name:"exempt_locked_accounts",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Allows user accounts which are locked to be excluded from minimum length requirements",
						   default:true
						   }

							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              