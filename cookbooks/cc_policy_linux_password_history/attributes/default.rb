default['cc_policy_linux_password_history']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_password_history',
                                                enabled: true}]
                              }


                             ]
                          }


default['cc_policy_linux_password_history']['ui_metadata']['policy_linux_password_history'] = {

    "policy"=>"policy_linux_password_history",
    "display_name"=>"policy_linux_password_history",
    "techspec"=>'<b>CSD:</b>AD.1.1.4.1, AD.1.1.4.2, AD.1.1.4.3, AD.1.1.4.4, AD.2.1.3.0, AD.2.1.3.1<br><b>-ITCS:</b>Section 2.1.2(2.1), 2.1.2(4.1)<br>',


"attributes"=>[
        {
          "key"=>"history",
          "type"=>"number",
          "display_name"=>"Number of old passwords that cannot be reused",
          "display_type"=>"text_box",
          "validator"=>"[0-9]*",
          "units"=>"",
          "options"=>[
          ],
          "hint"=>"Number of password iterations to track and prevent reuse of it(Number of old passwords that shouldn't match the next new password set)."
        },
        {
          "key"=>"encryption_algorithm",
          "type"=>"text",
          "display_name"=>"Encryption algorithm",
          "display_type"=>"text_box",
          "validator"=>"^(?:md5|sha512|sha256|bigcrypt|blowfish)$",
          "units"=>"",
          "options"=>[
          ],
          "hint"=>"This attribute is for RedHat/Ubuntu. Please input algorithm value from md5,sha256,sha512,bigcrypt,blowfish.If its empty, then no change will be made for this attribute.",
          isNull: true
        }
  ],
  "validator"=>"",
  "units"=>"",
  "hint"=>""
}
