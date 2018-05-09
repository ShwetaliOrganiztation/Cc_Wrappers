default['cc_policy_linux_xhost']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               enforced_by: [{
                                                policy: 'policy_linux_xhost',
                                                enabled: false}]
                              }               

                           
                             ]
                          }
default['cc_policy_linux_xhost']['ui_metadata']['policy_linux_xhost'] = {
  policy: "policy_linux_xhost",
  display_name: "policy_linux_xhost",
  techspec: '<b>CSD:</b>AD.1.5.7<br><b>-ITCS:</b>NA<br>',
  attributes:[{
                key:"enforce_xhost_access_control",
                type:"boolean",
                display_name:"enforce_xhost_access_control",
                display_type:"single_select",
                validator:"^(?i)(true|false)$",
                units:"",
                options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
                hint:"Ensure that the X host access control is not disabled on systems running the X host.",
                default:true
            }],
  validator: "",
  units: "",
  hint: ""
}
