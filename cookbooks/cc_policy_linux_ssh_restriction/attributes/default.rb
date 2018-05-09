default['cc_policy_linux_ssh_restriction']['policy_map']={
  "components"=>[{
    identified_by: 'value',
    id: 'os:linux',
    "enforced_by"=>[{
      policy: 'policy_linux_ssh_restriction',
      enabled: false
    }]
  }]
}
default['cc_policy_linux_ssh_restriction']['ui_metadata']['policy_linux_ssh_restriction']={
  policy: 'policy_linux_ssh_restriction',
  display_name: 'policy_linux_ssh_restriction',
  "attributes"=>[
  {
    key: "enabled",
    display_name: "Enabled",
    type: "Boolean",
    display_type: "single_select",
    validator: "",
    units: "",
    hint: "Enables or disables ssh restriction. Values: true, false"
  },
  {
    key: "AllowUsers",
    display_name: "Allow Users",
    type: "text",
    display_type: "text_box",
    validator: "", 
    units: "",
    hint: "Would allow access to users or users from the specified host (Ex:user1 user2@host2)",
    default: ''
  },
  {
    key: "ListenAddress",
    display_name: "Listen Address",
    type: "CSV",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "Specifies list of network interfaces to listen sshd daemon",
    default: ''
  },
  {
    key: "RestartSshService",
    display_name: "Restart Ssh Service",
    type: "Boolean",
    display_type: "single_select",
    validator: "",
    units: "",
    hint: "Specifies whether ssh service would restart or not when sshd config file is modified. Values: true, false"
  },
  {
    key: "ips_whitelist",
    display_name: "IPs Whitelist",
    type: "CSV",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "Specifies list of Ip address ignored to listen sshd daemon",
    default: ''
  }, 
  ],
  validator: "",
  units: "",
  hint: ""
}
