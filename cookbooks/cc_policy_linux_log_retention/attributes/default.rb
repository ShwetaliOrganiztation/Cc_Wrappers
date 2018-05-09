default['cc_policy_linux_log_retention']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_log_retention',
                                                enabled: true}]
                              }


                             ]
                          }

  default['cc_policy_linux_log_retention']['ui_metadata']['policy_linux_log_retention'] = {
           policy:"policy_linux_log_retention",
           display_name:"policy_linux_log_retention",
           techspec: '<b>CSD:</b>AD.1.2.6, AD.10.1.2.1<br><b>-ITCS:</b>Section 2.1.2(6.1)<br>',
           'attributes' => [
                {key:"min_rotate_days",
                   type:"number",
                   display_type:"text_box",
                   display_name:"Minimum number of days for rotation",
                   validator:"[0-9]*",
                   units:"days",
                   "options"=>[],
                   hint:'Minimum number of days for log rotation, <b>only</b> effective when rotation interval is daily or weekly'
                },
                {key:"min_rotate_months",
                   type:"number",
                   display_type:"text_box",
                   display_name:"Minimum number of months for rotation",
                   validator:"[0-9]*",
                   units:"months",
                   "options"=>[],
                   hint:'Minimum number of months for log rotation, <b>only</b> effective when rotation interval is monthly or yearly'
                },
                  {key:"log_filepaths",
                   type:"csv",  
                   display_name: "Paths to logfiles",
                   display_type:"string_array",
                   validator:"",
                   units:"",
                   "options"=>[],
                   hint:"Enter the list of paths to the logfiles"}
             ],
             validator:"",
             units:"",
             hint:""}
