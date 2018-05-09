default['cc_policy_linux_tftp']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_tftp',
                                                enabled: true}]
                              }               

                             ]
}

# default['policy_linux_tftp']['tftp_root_directory'] = '/var/lib/tftpboot'
# default['policy_linux_tftp']['tftp_root_directory_attributes'] = { 'mode' => '0755', 'owner' => 'root', 'group' => 'root' }


default['cc_policy_linux_tftp']['ui_metadata']['policy_linux_tftp'] = {
    policy: 'policy_linux_tftp',
    display_name: 'policy_linux_tftp',
    techspec: '<b>CSD:</b>AD.1.5.2.1<br><b>-ITCS:</b>Section 2.1.2(8)<br>',
    "attributes" => [
        {
         key: "root_dir",
         display_name: "Root Directory",
         type: "CSV",
         display_type: "text_box",
         validator: "",
         units: "",
         hint: "Provide TFTP root directory name with complete path."

        },
        {
         key: "mode",
         display_name: "Mode",
         type: "text",
         display_type: "text_box",
         validator: "^[0-7]{0,4}$",
         units: "",
         hint: "Provide access mode for the tftp root directory"

        },
        {
         key: "owner",
         display_name: "Owner",
         type: "text",
         display_type: "text_box",
         validator: "",
         units: "",
         hint: "Provide Owner name for the tftp root directory"

        },
        {
         key: "group",
         display_name: "Group",
         type: "text",
         display_type: "text_box",
         validator: "",
         units: "",
         hint: "Provide Group name for the tftp root directory"

        }
    ],
    validator: "",
    units: "",
    hint: ""
}
