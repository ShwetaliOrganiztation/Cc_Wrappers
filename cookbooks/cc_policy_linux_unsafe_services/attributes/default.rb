default['cc_policy_linux_unsafe_services']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_unsafe_services',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_linux_unsafe_services']['ui_metadata']['policy_linux_unsafe_services']= {
policy:"policy_linux_unsafe_services",
        display_name:"policy_linux_unsafe_services",
        techspec: '<b>CSD:</b>AD.1.5.5, AD.1.5.8.1, AD.1.5.8.2, AD.1.5.8.3, AD.1.5.8.4, AD.1.5.8.5, AD.1.5.8.6, AD.1.5.8.7, AD.1.5.8.8, AD.1.5.9.1, AD.1.5.9.2, AD.1.5.9.3, AD.1.5.9.4, AD.1.5.9.5, AD.1.5.9.6, AD.1.5.9.7, AD.1.5.9.8, AD.1.5.9.9, AD.1.5.9.10, AD.1.5.9.11, AD.1.5.9.12, AD.1.5.9.13, AD.1.5.9.14, AD.1.5.9.15, AD.1.5.9.16, AD.1.5.9.17, AD.1.5.9.23, AD.1.5.9.24, AD.1.5.10.1<br><b>-ITCS:</b>Section 2.1.2(8)<br>',
        "attributes"=>[

                         {key:"unsafe_services",
                          type:"PotentialComplex",
                          display_type:"object_set",
              display_name:"unsafe_services",
                          validator:"",
                          units:"",
                          "options"=>[],
                          hint:"List of the services which needs to be disabled",
              add_remove:"disable",
                          "attributes"=>[{
                                        
                        display_type: "string_array",
                        hint:"List of the services which needs to be disabled for this platform"

}]
                          
           }],
        validator:"",
        units:"", 
        hint:""
     }

