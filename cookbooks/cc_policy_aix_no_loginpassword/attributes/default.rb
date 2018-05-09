default['cc_policy_aix_no_loginpassword']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_no_loginpassword',
                              enabled: true}]
    }
]
}

# set policy_aix_no_loginpassword to true, to enable this feature else set to false.
# default['policy_aix_no_loginpassword']['enforce_aix_no_loginpassword'] = true

# System/User IDs which should not have login password assigned
# default['policy_aix_no_loginpassword']['system_ids'] = ['bin', 'daemon', 'adm', 'lpd', 'sys', 'shutdown', 'halt', 'ldap', 'uucp', 'nuucp', 'imnadm', 'lp', 'invscout', 'nobody', 'pconsole', 'ipsec', 'snapp']
# default['policy_aix_no_loginpassword']['white_list']=[]



default['cc_policy_aix_no_loginpassword']['ui_metadata']['policy_aix_no_loginpassword'] = {
    policy:"policy_aix_no_loginpassword",
    display_name:"policy_aix_no_loginpassword",
    techspec: '<b>CSD:</b>E.1.1.10.3<br><b>-ITCS:</b>NA<br>',
    attributes:[
		{
            key:"enforce_aix_no_loginpassword",
            type:"boolean",
            display_name:"Enforce Aix No Login Password",
            display_type:"single_select",
            validator:"",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
            hint:"Set the value to true to remove passwords from the listed users otherwise set to false to not enforce this feature."
        },
		{
            key:"system_ids",
            type:"CSV",
            display_name:"System Ids",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"List of System/User IDs which should not have login password assigned.",
            default:"['bin', 'daemon', 'adm', 'lpd', 'sys', 'shutdown', 'halt', 'ldap', 'uucp', 'nuucp', 'imnadm', 'lp', 'invscout', 'nobody', 'pconsole', 'ipsec', 'snapp']"
        },
		{
            key:"white_list",
            type:"CSV",
            display_name:"White List",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"List of System/User IDs which will be exempted from no loginpassword check.",
            default:""
        }
    ],
    validator:'',
    units:'',
    hint:''
}

