default['cc_policy_aix_unsafe_services']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_unsafe_services',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_unsafe_services']['ui_metadata']['policy_aix_unsafe_services'] = {
              policy:"policy_aix_unsafe_services",
						  display_name:"policy_aix_unsafe_services",
techspec:'<b>CSD:</b>E.1.5.7, E.1.5.8, E.1.5.12.1, E.1.5.12.2, E.1.5.12.3, E.1.5.12.4, E.1.5.12.5, E.1.5.12.6, E.1.5.12.7, E.1.5.12.8, E.1.5.12.9, E.1.5.12.10, E.1.5.12.11, E.1.5.12.12, E.1.5.12.13, E.1.5.12.14, E.1.5.12.15, E.1.5.12.16, E.1.5.12.17, E.1.5.12.18, E.1.5.12.19, E.1.5.12.20, E.1.5.12.21, E.1.5.12.22, E.1.5.12.23, E.1.5.12.24, E.1.5.12.25, E.1.5.12.27, E.1.5.12.28, E.1.5.22.2, E.1.5.22.3, E.1.5.22.4<br><b>-ITCS:</b>Section 2.1.1(8)<br>',
						  attributes:[
						  {key:"safe_services",
						  type:"CSV",
						  display_name:"safe_services",
						  display_type:"csv",
						  validator:"",
						  units:"",
						  hint:"List of services which needs to be enabled."},

						  {key:"unsafe_services",
						  type:"CSV",
						  display_name:"unsafe_services",
						  display_type:"csv",
						  validator:"",
						  units:"",
						  options:"",
						  hint:"",
						  default:"rwalld, sprayd, echo, finger, netstat, ftp, chargen, discard, daytime, systat, dtspcd, ttdbserver, cmsd, rusersd, pcnfsd, rstatd, tftp, rexd, bootps, who, rwho, telnet"
						  }
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>"List of services which needs to be disabled."
							}


              
