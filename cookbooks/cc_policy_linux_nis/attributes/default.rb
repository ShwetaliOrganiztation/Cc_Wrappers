default['cc_policy_linux_nis']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_nis',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_linux_nis']['ui_metadata']['policy_linux_nis'] = {
	policy:"policy_linux_nis",
	display_name:"policy_linux_nis",
	techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
	"attributes"=>[
      		{
		  	key:"yp_dir",
		  	type:"text",
		  	display_name:"yp directory",
		  	display_type:"text_box",
		  	validator:"",
		  	units:"",
		  	"options"=>[],
		  	hint:"Input yp directory(The Directory where the NIS data is stored)."
        	}
      ],
      validator:"",
      units:"",
      hint:""
}
