default['cc_policy_aix_berkeley']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_berkeley',
                              enabled: true}]
    }


]
}
default['cc_policy_aix_berkeley']['ui_metadata']['policy_aix_berkeley'] = {
    policy:"policy_aix_berkeley",
    display_name:"policy_aix_berkeley",
    techspec: '<b>CSD:</b>E.1.5.6<br><b>-ITCS:</b>Section 2.1.1(8)<br>',
    attributes:[
        {key:"disable_hosts_equiv_file",
         type:"boolean",
         display_name:"disable_hosts_equiv_file",
         display_type:"single_select",
         validator:"^(?i)(true|false)$",
         units:"",
         options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
         hint:"Ensure that either hosts.equiv file does not exist, or it has no uncommented lines",
         default:"true"}
    ],
    validator:'',
    units:'',
    hint:''
}


              
