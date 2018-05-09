default['cc_policy_windows_session']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_session',
                                                enabled: false }]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_session']['ui_metadata']['policy_windows_session'] = {
           policy:"policy_windows_session",
           display_name:"policy_windows_session",
           techspec: '<b>CSD_Win2008:</b>YO.10.1.4.2<br><b>-CSD_Win2012:</b>ED.10.1.4.2<br><b>-CSD_Win2016:</b>GZ.10.1.4.2,GZ.10.1.4.3,GZ.10.1.4.4<br><b>-ITCS_Win2008:</b>NA<br><b>-ITCS_Win2012:</b>NA<br>',
              attributes:[
                {key: 'allow_modify_gpo',
                   type: 'Boolean',
                   display_type: 'single_select',
                   display_name: 'Allow GPO Remediation',
                   validator: '',
                   units: '',
                   options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
                   hint: 'Allow recipe to modify GPO settings.',
		   default: false},
                {key:"max_disconnection_time",
                   type:"text",
                   display_type:"text_box",
                   display_name:"Max disconnection time in minutes",
                   validator:"0|1|5|10|15|30|60|120|180|360|480|720|1080|1220|1440|3660|4880|7200",
                   units:"minutes",
                   options:[],
                   hint:"Max disconnection time in minutes. Valid value 0/1/5/10/15/30/60/120/180/360/480/720/1080/1220/1440/3660/4880/7200"},
                {key:"max_idle_time",
                   type:"text",
                   display_type:"text_box",
                   display_name:"Max idle time in minutes",
                   validator:"0|1|5|10|15|30|60|120|180|360|480|720|1080|1220|1440|3660|4880|7200",
                   units:"minutes",
                   options:[],
                   hint:"Max idle time in minutes. Valid value 0/1/5/10/15/30/60/120/180/360/480/720/1080/1220/1440/3660/4880/7200"},
				{key:"f_reset_broken",
                   type:"text",
                   display_type:"text_box",
                   display_name:"End session",
                   validator:"0|1",
                   units:"bytes",
                   options:[],
                   hint:"enable/disable end session when time limits are reached. 0 means disabled, 1 means enabled."}
			],
		validator:"",
        units:"",
        hint:""
        }

              
