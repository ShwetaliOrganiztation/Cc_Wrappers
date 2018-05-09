default['cc_policy_linux_pam_default_deny_all']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_pam_default_deny_all',
                                                enabled: true}]
                              }


                             ]
                          }


default['cc_policy_linux_pam_default_deny_all']['ui_metadata']['policy_linux_pam_default_deny_all'] = {
  "policy"=>"policy_linux_pam_default_deny_all",
  "display_name"=>"policy_linux_pam_default_deny_all",
  "techspec"=>'<b>CSD:</b>AD.1.4.1<br><b>-ITCS:</b>Section 2.1.2(2.1), 2.1.2(5.2)<br>',
  "attributes"=>[{
			key: "pam_listfile_path",
			display_name: "pam_listfile_path",
			type: "text",
			display_type: "text_box",
			validator: "",
			units: "",
			hint: "Provide complete file name path which will contain list of Users to deny SSH connection. Ex: '/lib/security/sshd.deny'"
		},
    {
			key: "pam_listso_plugin_path",
			display_name: "pam_listso_module_path",
			type: "text",
			display_type: "text_box",
			validator: "",
			units: "",
			hint: "Provide complete path of pam_listfile.so module present in the node, for example in case of redhat pam_listfile.so path is /lib64/security/pam_listfile.so."
		}
  ],
  "validator"=> "",
  "units"=> "",
  "hint"=> ""
}
