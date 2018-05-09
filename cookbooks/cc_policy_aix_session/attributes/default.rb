default['cc_policy_aix_session']['policy_map'] = {
    "components" => [
        {
            identified_by: 'value',
            id: 'os:aix',
            "enforced_by" => [
                {
                    policy: 'policy_aix_session',
                    enabled: true
                }
            ]
        }
    ]
}
default['cc_policy_aix_session']['ui_metadata']['policy_aix_session'] = {
    policy:"policy_aix_session",
	display_name:"policy_aix_session",
	techspec:'<b>CSD:</b>E.1.8.17, E.10.1.4.1, E.10.1.4.5, E.10.1.4.6, E.10.1.4.7, E.10.1.4.8, E.10.1.4.9, E.10.1.4.10<br><b>-ITCS:</b>Section 2.1.1(3.2)<br>',
	attributes:[
        {
            key:"umask",
            type:"text",
            display_name:"umask",
            display_type:"text_box",
            validator:"^[0-7]{1,4}$",
            units:"",
            options:"",
            hint:"Specifies default umask for users.",
            default:"77"
        },
        {
            key:"update_user_stanza_umask",
            type:"boolean",
            display_name:"Enable umask for individual users",
            display_type:"single_select",
            validator:"",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
            hint:"Specifies whether the umask for the user stanza's should be updated as well. The default value is false.",
            default:"false"
        },
        {
            key:"umask_exceptions",
            type:"string_array",
            display_name:"umask_exceptions",
            display_type:"string_array",
            validator:"[a-zA-Z0-9_]+:[0-7]*",
            units:"",
            options:"",
            hint:"List of users that need to be excluded. Example value: 'root:55' If the entry is as 'user1:', then no change will be applied on the user for umask value.",
            default:[]
        },
        {
            key: "enforce_timeout",
            display_name: "Enforce Timeout",
            type: "boolean",
            display_type: "single_select",
            validator: "",
            units: "",
            hint: "Switch to enforce timeout on existing profiles.",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
            default:"false"
        },
        {
            key:"timeout",
            type:"text",
            display_name:"timeout",
            display_type:"text_box",
            validator:"[0-9]*",
            units:"",
            options:"",
            hint:"Specifies the number of seconds a user maybe idle before auto logout. Value must be greater than 60 and in multiple of 60.",
            default:"300"
        },
        {
            key:"skel_files",
            display_name:"Skeleton Files",
            type:"string_array",
            display_type:"string_array",
            validator:"",
            units:"",
            hint:"Skeleton File List"
        },
        {
            key: "enforce_timeout_etc_tsh_profile",
            display_name: "Enforce Timeout in /etc/tsh_profile file",
            type: "boolean",
            display_type: "single_select",
            validator: "",
            units: "",
            hint: "Switch to enforce timeout in /etc/tsh_profile file.",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
            default:"true"
        },
        {
            key: "enforce_timeout_etc_csh_login",
            display_name: "Enforce Timeout in /etc/csh.login file",
            type: "boolean",
            display_type: "single_select",
            validator: "",
            units: "",
            hint: "Switch to enforce timeout in /etc/csh.login file.",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
            default:"true"
        },
        {
            key: "enforce_timeout_etc_security_mkuser",
            display_name: "Enforce Timeout in mkuser.sys and mkuser.sys.custom files",
            type: "boolean",
            display_type: "single_select",
            validator: "",
            units: "",
            hint: "Switch to enforce timeout in /etc/security/mkuser.sys and mkuser.sys.custom files.",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
            default:"true"
        },
    ],
    "validator"=>"",
    "units"=>"",
    "hint"=>""
}
