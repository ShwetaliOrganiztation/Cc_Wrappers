default['cc_policy_aix_inactive_accounts']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_inactive_accounts',
                              enabled: true}]
    }


]
}
default['cc_policy_aix_inactive_accounts']['ui_metadata']['policy_aix_inactive_accounts'] = {
    policy:"policy_aix_inactive_accounts",
    display_name:"policy_aix_inactive_accounts",
    techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
    attributes:[{
                    key:"inactive_age",
                    type:"number",
                    display_name:"inactive_age",
                    display_type:"text_box",
                    validator:"[0-9]*",
                    units:"",
                    options:"",
                    hint:"Days after which an account will be disabled due to inactivity.",
                    default:"30"
                },{
                    key:"whitelist",
                    type:"CSV",
                    display_name:"whitelist",
                    display_type:"string_array",
                    validator:"",
                    units:"",
                    options:"",
                    hint:"List of users that will not be removed due to inactivity",
                    default:"[]"
                },{
                    key:"ignore_no_history",
                    type:"boolean",
                    display_name:"ignore_no_history",
                    display_type:"single_select",
                    validator:"^(?i)(true|false)$",
                    units:"",
                    options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
                    hint:"If set true, accounts with no login history will be exempt from inactivation.",
                    default:"true"
                },{
                    key:"exempt_accounts_without_shell",
                    type:"boolean",
                    display_name:"exempt_accounts_without_shell",
                    display_type:"single_select",
                    validator:"^(?i)(true|false)$",
                    units:"",
                    options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
                    hint:"Exempt user accounts with their shell set to /bin/false from being removed due to inactivity",
                    default:"true"
                }],
    validator:'',
    units:'',
    hint:''
}
              
