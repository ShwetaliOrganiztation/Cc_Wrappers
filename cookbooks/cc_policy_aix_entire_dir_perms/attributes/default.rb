default['cc_policy_aix_entire_dir_perms']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_entire_dir_perms',
                              enabled: true}]
    }
  ]
}

default['cc_policy_aix_entire_dir_perms']['ui_metadata']['policy_aix_entire_dir_perms'] = {
    policy:"policy_aix_entire_dir_perms",
    display_name:"policy_aix_entire_dir_perms",
    techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
    attributes:[
        {
            key:"dirlist",
            type:"complex_hash",
            display_name:"Directory List",
            type: "complex_hash",
            display_type: "object_set",
            "attributes" => [{
                                 display_type: "key_value_pair",
                                 "attributes" => [{
                                                      display_type: "file_permission"
                                                  }]
                             }],
            validator:"",
            units:"",
            options:"",
            hint:"List of directories with their corresponding permissions, owners. example:  {  \"/tmp2\" => { mode: \"00755\", owner: \"root\" } } } ",
            default:"{  }"
        },
        {
            key: "white_list",
            display_name: "White List",
            type: "CSV",
            display_type: "string_array",
            validator: "",
            units: "",
            hint: "List of directories,files to be excluded from this policy.",
            default: "[]"
        }
    ],
    validator:"",
    units:"",
    hint:""
}
