default['cc_policy_linux_rlogin']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_rlogin',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_linux_rlogin']['ui_metadata']['policy_linux_rlogin'] = {
"policy"=>"policy_linux_rlogin",
"display_name"=>"policy_linux_rlogin",
"techspec"=>'<b>CSD:</b>AD.1.5.4.1, AD.1.5.4.2<br><b>-ITCS:</b>Section 2.1.2(8)<br>',
"attributes" =>[
        {
            key: "EntryRegexWhitelist",
            type: "string_array",
            display_name: "Entry Regex Whitelist",
            display_type: "string_array",
            validator: "",
            units: "",
            hint: "If entry in the /etc/hosts.equiv file matches any regex of the whitelist, it will not be removed. Example: the regex: ^host\\d$ will match host0, host1, host2,host3 etc.Any special character in the hostname present in this whitelist needs to be escaped using \\",
            default: []
        },
        {
            key: "PamFileList",
            type: "string_array",
            display_name: "Pam Filelist",
            display_type: "string_array",
            validator: "",
            units: "",
            hint: "Pam File list",
            default: ['rlogin', 'rexec', 'rsh']
        }
],
 "validator"=> "",
 "units"=> "",
 "hint"=> ""
}
