default['cc_policy_windows_task_scheduler']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{ 
                                                policy: 'policy_windows_task_scheduler',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
# default['policy_windows_task_scheduler']['permissions'] = ['ReadAndExecute']

default['cc_policy_windows_task_scheduler']['ui_metadata']['policy_windows_task_scheduler'] = {
  policy: 'policy_windows_task_scheduler',
  display_name: 'policy_windows_task_scheduler',
   techspec: '<b>CSD_Win2008:</b>YO.1.8.28.1, YO.1.8.28.2<br><b>-CSD_Win2012:</b>ED.1.8.28.1, ED.1.8.28.2<br><b>-CSD_Win2016:</b>GZ.1.8.26.1, GZ.1.8.26.2<br><b>-ITCS_Win2008:</b>Section 5.1<br><b>-ITCS_Win2012:</b>Section 5.1<br>',
  "attributes" => [{
     key: "permissions",
     display_name: "Scheduled Task Permissions",
     type: "CSV",
     display_type: "string_array",
     validator: "",
     units: "",
     hint: "Permissions to be applied on the files that are defined in the path of the task command/script (Valid permission: Read, Write, ReadAndExecute, Modify, FullControl)",
     default: "['ReadAndExecute']"

    },
    ],

 validator: "",
 units: "",
 hint: ""
}

