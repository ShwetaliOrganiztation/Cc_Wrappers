default['cc_policy_linux_failed_login_retries']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" =>  [{
                                                policy: 'policy_linux_failed_login_retries',
                                                enabled: true}]
                              }               

                           
                             ]
                          }

# default['policy_linux_failed_login_retries']['lockoutduration'] = '3600'
# default['policy_linux_failed_login_retries']['retries'] = '5'
# default['policy_linux_failed_login_retries']['onerror'] = 'fail'

default['cc_policy_linux_failed_login_retries']['ui_metadata']['policy_linux_failed_login_retries'] = {
    policy: 'policy_linux_failed_login_retries',
    display_name: 'policy_linux_failed_login_retries',
    techspec: '<b>CSD:</b>AD.1.1.6.0, AD.1.1.6.1<br><b>-ITCS:</b>Section 2.1.2(5.4)<br>',
    attributes: [{
      key: "lockoutduration",
      display_name: "Lockout Duration",
      type: "number",
      display_type: "text_box",
      validator: "^[1-9][0-9]*$",
      units: "",
      hint: "Please input lockout duration in seconds, will ignore lockout duration if attribute is left empty",
      isNull: true 
    },
    {
      key: "retries",
      display_name: "retries",
      type: "number",
      display_type: "text_box",
      validator: "^[1-9][0-9]*$",
      units: "",
      hint: "Please input maximal retry number that is allowed",
      isNull: true
    },
    {
      key: "onerror",
      display_name: "onerr",
      type: "text",
      display_type: "text_box",
      validator: "^(?:fail|succeed)$",
      units: "",
      hint: "This attribute is for Suse/Ubuntu. Please input onerr value as 'fail' or 'succeed'. If its empty, then no change will be made for this attribute.",
      isNull: true
    }
],
   validator: "",
   units: "",
   hint: ""
}
