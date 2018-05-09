default['cc_policy_linux_no_loginpassword']['policy_map'] = {"components" => [
    {
        identified_by: 'value',
        id: 'os:linux',
        "enforced_by" => [{
                              policy: 'policy_linux_no_loginpassword',
                              enabled: true}]
    }
]
}

default['cc_policy_linux_no_loginpassword']['ui_metadata']['policy_linux_no_loginpassword'] = {
    policy:"policy_linux_no_loginpassword",
    display_name:"policy_linux_no_loginpassword",
    techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
    attributes:[
		{
            key:"system_ids",
            type:"CSV",
            display_name:"System Ids",
            display_type:"string_array",
            validator:"",
            units:"",
            options:"",
            hint:"System users which should not have password assigned to them.",
            default:"['bin','daemon','adm','lp','sync','shutdown','halt','mail','uucp','operator','games','gopher','ftp','nobody','dbus,'usbmuxd','rpc','avahi-autoipd','vcsa','rtkit','saslauth','postfix','avahi','ntp','apache','radvd','rpcuser','nfsnobody','qemu','haldaemon','nm-openconnect','pulse','gsanslcd','gdm','sshd','tcpdump'']"
        }
    ],
    validator:'',
    units:'',
    hint:''
}


              
