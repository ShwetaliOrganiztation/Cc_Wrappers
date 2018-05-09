default['cc_policy_aix_file_permissions']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_file_permissions',
                              enabled: true}]
    }
  ]
}


default['cc_policy_aix_file_permissions']['ui_metadata']['policy_aix_file_permissions'] = {
    policy:"policy_aix_file_permissions",
    display_name:"policy_aix_file_permissions", 
techspec:'<b>CSD:</b>E.1.2.1, E.1.2.2, E.1.2.3, E.1.8.2, E.1.8.3.1, E.1.8.3.2, E.1.8.3.3, E.1.8.3.4, E.1.8.3.5, E.1.8.3.6, E.1.8.3.7, E.1.8.3.8, E.1.8.4.1, E.1.8.4.4, E.1.8.6.1, E.1.8.6.3, E.1.8.6.4, E.1.8.8.1, E.1.8.8.2, E.1.8.8.3, E.1.8.8.4, E.1.8.8.5, E.1.8.8.6, E.1.8.10, E.1.8.11<br><b>-ITCS:</b>Section 2.1.1(5.1), 2.1.1(6)<br>',
    attributes:[
    {
            key:"dirs_for_other_perm_normalization",
            type:"CSV",
            display_name:"Dirs For Other Perm Normalization",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"For the files contained in the directories, the write permission from others will be removed in case it has both write and execute permissions.",
            default:"['/tmp', '/opt', '/var', '/usr/local']"
        },
        {
            key:"whitelist_other_perm_normalization",
            type:"CSV",
            display_name:"Whitelist For Other Perm Normalization",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"Files to be excluded from perm_normalization check.",
            default:"[]"
        },
        {
            key:"filelist",
            type:"complex_hash",
            display_name:"File List",
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
            hint:"Mapping of files with corresponding permissions, owners and groups.",
            default:"{ \"/var/adm/wtmp\" => { mode: '00664', owner: 'adm', group: 'adm', mustexist: true },  \"/var/adm/sulog\" => { mode: '00600', owner: 'root', group: 'system', mustexist: true},  \"/etc/security/failedlogin\" => { mode: '00644', owner: 'root', group: 'system', mustexist: true},  \"/.rhosts\" => { mode: '00600', owner: 'root', group: 'system' },   \"/.netrc\" => {mode: '00600', owner:'root', group:'system'}}"
        },{
            key:"dirlist",
            type: "complex_hash",
            display_name:"Directory List",
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
            hint:"Mapping of directories with corresponding permissions, owners and groups.",
            default:"{  \"/var/ifor\" => { mode: \"01775\" },  \"/var/adm\" => { mode: \"00775\" }, \"/var/tmp\" => { mode: \"01777\" },  \"/\" => { mode: \"00755\" },  \"/usr\" => { mode: \"00755\" }, \"/usr/share\" => { mode: \"00775\" }, \"/usr/share/dict\" => { mode: \"00775\" }, \"/var\" => { mode: \"00755\" },  \"/etc/security\" => { mode: \"00770\" },  \"/tmp\" => { mode: '01777' },  \"/etc\" => {mode: \"00755\"},  \"/bin\" => {mode: \"00755\"},  \"/usr/bin\" => {mode: \"00755\"},  \"/usr/etc\"  => {mode: \"00755\"}}"
        },{
            key:"non_world_writable_dirs",
            type:"CSV",
            display_name:"Non World Writable Dirs",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"Directories checked recursively for world write access (will be revoked).",
            default:"[\"/etc\", \"/bin\", \"/usr/sbin\", \"/usr/bin\", \"/usr/etc\"]"
        },{
            key:"whitelist_non_world_writable_dirs",
            type:"CSV",
            display_name:"Whitelist Non World Writable Dirs",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"Directories checked recursively for world write access (will be revoked).",
            default:"[]"
        },{
            key:"not_enforce_if_file_exist",
            type:"CSV",
            display_name:"Not Enforce if File Exist",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"Update this attribute if owner/group/permission not to enforce for file list attribute if file exist in node.",
            default:"[\"/var/adm/wtmp\", \"/var/adm/sulog\", \"etc/security/failedlogin\"]"
        },{
            key:"dir_whitelist",
            type:"CSV",
            display_name:"Whitelist for directory list",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"Directories to be excluded from mode/owner/group change remediation.",
            default:"[]"
        }
    ],
    validator:"",
    units:"",
    hint:""
}
