default['cc_policy_aix_i4ls']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_i4ls',
                              enabled: true}]
    }


]
}
default['cc_policy_aix_i4ls']['ui_metadata']['policy_aix_i4ls'] = {
    policy:"policy_aix_i4ls",
    display_name:"policy_aix_i4ls",
    techspec: '<b>CSD:</b>E.1.5.10.1, E.1.5.10.2, E.1.5.10.3<br><b>-ITCS:</b>Section 2.1.1(8)<br>',
    attributes:[
        {
            key:"enforce_file_stats",
            type:"boolean",
            display_name:"enforce_file_stats",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
            hint:"Ensure /var/ifor/i4ls.ini: is not writable for general users, is owned y a privileged system account, or a member of the privileged system groups, and is in a privileged system group",
            default:"true"
        },{
            key:"enforce_disable_remote_admin",
            type:"boolean",
            display_name:"enforce_disable_remote_admin",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
            hint:"Ensure DisableRemoteAdmin is set to yes in /var/ifor/i4ls.ini",
            default:"true"
        },{
            key:"enforce_disable_remote_ndl_admin",
            type:"boolean",
            display_name:"enforce_disable_remote_ndl_admin",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
            hint:"Ensure DisableRemoteNdlAdmin is set to yes in /var/ifor/i4ls.ini",
            default:"true"
        },{
            key:"remove_world_writable",
            type:"boolean",
            display_name:"remove_world_writable",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
            hint:"Ensure world writable permissions are removed for file /var/ifor/i4ls.ini",
            default:"true"
        },{
            key:"privileged_system_accounts",
            type:"complex_hash",
            display_name:"privileged_system_accounts",
            display_type:"csv",
            validator:"",
            units:"",
            options:"",
            hint:"Comma-separated list of privileged system accounts",
            default:"'root'"
        },{
            key:"privileged_system_groups",
            type:"complex_hash",
            display_name:"privileged_system_groups",
            display_type:"csv",
            validator:"",
            units:"",
            ptions:"",
            hint:"Comma-separated list of privileged system groups",
            default:"'system'"
        }],
    validator:'',
    units:'',
    hint:''
}

