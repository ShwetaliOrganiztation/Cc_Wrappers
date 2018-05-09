default['cc_policy_linux_delete_files']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_delete_files',
                                                enabled: true}]
                              }
                             ]
                          }
default['cc_policy_linux_delete_files']['ui_metadata']['policy_linux_delete_files'] = {
            policy:"policy_linux_delete_files",
            display_name:"policy_linux_delete_files",
            techspec:'<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
            attributes:[
              {
                key:"filelist",
                type:"CSV",
                display_name:"filelist",
                display_type:"string_array",
                validator:"",
                units:"",
                options:[    ],
                hint:"List of files that will be removed",
                default:['/root/.rhosts','/root/.netrc']
              }
            ]
}
