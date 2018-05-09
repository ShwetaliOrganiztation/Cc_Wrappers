default['cc_policy_aix_snmpd']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:aix',
        "enforced_by" => [{
                              policy: 'policy_aix_snmpd',
                              enabled: true}]
    }


]
}
default['cc_policy_aix_snmpd']['ui_metadata']['policy_aix_snmpd'] = {
    policy:"policy_aix_snmpd",
    display_name:"policy_aix_snmpd",
    techspec: '<b>CSD:</b>E.1.5.12.26, E.1.8.7.1, E.1.8.7.2<br><b>-ITCS:</b>Section 2.1.1(5.1), 2.1.1(8)<br>',
    attributes:[


        {key:"community_name_map",
         type:"complex_hash",
         display_name:"community_name_map",
         display_type: "object_set",
         "attributes" => [{
                              display_type: "key_value_pair",
                              "attributes" => [{
                                                   display_type: "string"
                                               }]
                          }],
         validator:"",
         units:"",
         options:"",
         hint:"community name mappings from before to after.",
         default:{  "public" => "nonpublic",  "private" => "nonprivate"}},


        {key:"conf_file_perms",
         type:"complex_hash",
         display_name:"conf_file_perms",
         display_type: "key_value_pair",
         "attributes" => [{
                              display_type: "directory_permission"
                          }],
         validator:"",
         units:"",
         options:"",
         hint:"Default permissions  to SNMP configuration files.",
         default:{ mode: '0740', owner: 'root', group: 'system' }},


        {key:"conf_file_list",
         type:"string_array",
         display_name:"conf_file_list",
         display_type:"string_array",
         validator:"",
         units:"",
         options:"",
         hint:"Default Configuration file list.",
         default:[ "/etc/snmpd.conf",   "/etc/snmpdv2.conf",   "/etc/snmpdv3.conf"  ]
        }


    ],
    "validator"=>"",
    "units"=>"",
    "hint"=>""
}


              
