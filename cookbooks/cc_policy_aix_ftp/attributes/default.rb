default['cc_policy_aix_ftp']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_ftp',
                              enabled: true}]
    }


]
}
default['cc_policy_aix_ftp']['ui_metadata']['policy_aix_ftp'] = {
    policy:"policy_aix_ftp",
    display_name:"policy_aix_ftp",
    techspec: '<b>CSD:</b>E.1.1.11, E.1.5.1.1, E.1.5.1.2, E.1.5.1.3, E.1.5.1.4, E.1.5.1.5, E.1.5.1.6, E.1.5.2.1, E.1.5.2.2, E.1.5.2.3, E.1.5.2.4, E.1.5.2.5<br><b>-ITCS:</b>Section 2.1.1(5.2), 2.1.1(8)<br>',
    attributes:[
        {
            key:"not_allowed_ftpusers",
            type:"CSV",
            display_name:"not_allowed_ftpusers",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"List of users whose FTP login will be prohibited.",
            default:"['root']"
        },{
            key:"default_ftpusers",
            type:"CSV",
            display_name:"default_ftpusers",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"List of default FTP users; these users will have \"/bin/false\" shell.",
            default:"['ftp']"
        },{
            key:"enforce_ftp_daemon_options",
            type:"boolean",
            display_name:"enforce_ftp_daemon_options",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
            hint:"Ensure that, if the FTP daemon is active, and the anonymous ftp user exists, and any subdirectories in the Anonymous FTP home are writeable, the -u option is set for the FTP daemon.",
            default:"true"
        },{
            key:"enforce_ftp_home_dir_access",
            type:"boolean",
            display_name:"enforce_ftp_home_dir_access",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
            hint:"Ensure that the FTP home directory is owned by root and grants write access only to the owner (if the FTP daemon is active, and the anonymous ftp user exists).",
            default:"true"
        },{
            key:"enforce_ftp_bin_dir_access",
            type:"boolean",
            display_name:"enforce_ftp_bin_dir_access",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
            hint:"Ensure that the FTP /bin subdirectory is owned by root, grants write access only to the owner, and all files in this directory allow only execute permission to owner, group, and others. (if the FTP daemon is active, and the anonymous ftp user exists).",
            default:"true"
        },{
            key:"enforce_ftp_lib_dir_access",
            type:"boolean",
            display_name:"enforce_ftp_lib_dir_access",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
            hint:"Ensure that the FTP /lib subdirectory is owned by root, grants write access only to the owner, and all files in this directory allow read and execute permission to owner, group, and others. (if the FTP daemon is active, and the anonymous ftp user exists).",
            default:"true"
        },{
            key:"enforce_ftp_etc_dir_access",
            type:"boolean",
            display_name:"enforce_ftp_etc_dir_access",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
            hint:"Ensure that the FTP /etc subdirectory is owned by root, and grants write access only to the owner. (if the FTP daemon is active, and the anonymous ftp user exists).",
            default:"true"
        },{
            key:"enforce_ftp_etc_passwd_access",
            type:"boolean",
            display_name:"enforce_ftp_etc_passwd_access",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
            hint:"Ensure that the FTP /etc/passwd file is owned by root, and grants write access only to the owner. (if the FTP daemon is active, and the anonymous ftp user exists).",
            default:"true"
        },{
            key:"ensure_etc_ftpusers_exists",
            type:"boolean",
            display_name:"ensure_etc_ftpusers_exists",
            display_type:"single_select",
            validator:"^(?i)(true|false)$",
            units:"",
            options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}",
            hint:"If true it ensures that the file /etc/ftpusers exists",
            default:"true"
        }],
    validator:'',
    units:'',
    hint:''
}
