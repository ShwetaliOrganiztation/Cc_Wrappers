default['cc_policy_linux_sshd']['policy_map']={
  "components"=>[{
    identified_by: 'value',
    id: 'os:linux',
    "enforced_by"=>[{
      policy: 'policy_linux_sshd',
      enabled: true
    }]
  }]
}
default['cc_policy_linux_sshd']['ui_metadata']['policy_linux_sshd']={
  policy: 'policy_linux_sshd',
  display_name: 'policy_linux_sshd',
  techspec: '<b>CSD:</b>AD.1.1.7.2, AD.1.1.13.4<br><b>-ITCS:</b>Section 2.1.2(2.1), 2.1.2(5.2)<br>',
  "attributes"=>[{
    key: "PasswordAuthentication",
    display_name: "Password Authentication",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether password authentication is allowed. Values: yes, no, or left blank to ignore.",
    default: 'yes'
  },
  {
    key: "PermitEmptyPasswords",
    display_name: "Permit Empty Passwords",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Enables or disables OpenSSHD to allow blank passwords. Values: yes, no, or left blank to ignore.",
    default: 'no'
  },
  {
    key: "ChallengeResponseAuthentication",
    display_name: "Challenge Response Authentication",
    type: "text",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether challenge-response authentication is allowed (e.g. via PAM). Values: yes, no, or left blank to ignore.",
    default: ''
  },
  {
    key: "PubkeyAuthentication",
    display_name: "Pub key Authentication",
    type: "text",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Enables or disables OpenSSHD to use Public Key Authentication. Values: yes, no, or left blank to ignore",
    default: ''
  },
  #default['policy_linux_sshd']['KeyRegenerationInterval']='1h'######################NOtsurehowtohandlethis#############
  {
    key: "KeyRegenerationInterval",
    display_name: "Key Regeneration Interval",
    type: "CSV",
    display_type: "text_box",
    validator: "^[0-9]+[h|m|s]?$",
    units: "",
    hint: "OpenSSHD Key Regeneration Interval. Values: numeric seconds,  h/m for hours or minutes, or left blank to ignore.",
    default: '1h'
  },
  {
    key: "ServerKeyBits",
    display_name: "Server Key Bits",
    type: "number",
    display_type: "text_box",
    validator: "[0-9]*",
    units: "",
    hint: "Defines the number of bits in the ephemeral protocol version 1 server key.  Values: numeric bit length or left blank to ignore.",
    default: "2048"
  },
  #default['policy_linux_sshd']['HostbasedAuthentication']=''#default['policy_linux_sshd']['RSAAuthentication']=''
  {
    key: "HostbasedAuthentication",
    display_name: "Host Based Authentication",
    type: "text",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether rhosts or /etc/hosts.equiv authentication together with successful public key client host authentication is allowed. Values: yes, no, or left blank to ignore.",
    default: ""
  },
  {
    key: "RSAAuthentication",
    display_name: "RSA Authentication",
    type: "text",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether pure RSA authentication is allowed.  This option applies to protocol version 1 only. Values: yes, no, or left blank to ignore. default is ''."
  },
  {
    key: "PermitUserEnvironment",
    display_name: "Permit User Environment",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether ~/.ssh/environment and environment= options in ~/.ssh/authorized_keys are processed by sshd. Values: yes, no, or left blank to ignore. default is 'no'."
  },
  {
    key: "StrictModes",
    display_name: "Strict Modes",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Enables or disables OpenSSHD strict mode. Values: yes, no, or left blank to ignore. default is 'yes'."
  },
  {
    key: "PermitRootLogin",
    display_name: "Permit Root Login",
    type: "text",
    display_type: "text_box",
    validator: "^(?:yes|no|prohibit-password|without-password|forced-commands-only)$",
    units: "",
    hint: "Enables or disables root login via OpenSSH. Values: yes, no, prohibit-password, without-password, forced-commands-only or left blank to ignore. default is 'no'."
  },
  {
    key: "TCPKeepAlive",
    display_name: "TCP Keep Alive",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether the system should send TCP keepalive messages to the other side.. Values: yes, no, or left blank to ignore. default is 'yes'."
  },
  {
    key: "LoginGraceTime",
    display_name: "Login Grace Time",
    type: "CSV",
    display_type: "text_box",
    validator: "^[0-9]+[h|m|s]?$",
    units: "",
    hint: "The server disconnects after this time if the user has not successfully logged in.  Values: numeric seconds,  h/m for hours or minutes, or left blank to ignore. default is '2m'."
  },
  {
    key: "MaxStartups",
    display_name: "Max Start ups",
    type: "text",
    display_type: "text_box",
    validator: "[0-9]*",
    units: "",
    hint: "Specifies the maximum number of concurrent unauthenticated connections to the SSH daemon. Values: numeric or left blank to ignore. default is '100'.",
    default: "100"
  },
  {
    key: "MaxAuthTries",
    display_name: "Max Auth Tries",
    type: "number",
    display_type: "text_box",
    validator: "[0-9]*",
    units: "",
    hint: " Specifies the maximum number of authentication attempts permitted per connection. Values: numeric or left blank to ignore. default is '5'."
  },
  {
    key: "LogLevel",
    display_name: "Log Level",
    type: "text",
    display_type: "text_box",
    validator: "^(?:QUIET|FATAL|ERROR|INFO|VERBOSE|DEBUG|DEBUG1|DEBUG2|DEBUG3)$",
    units: "",
    hint: "Gives the verbosity level that is used when logging messages from OpenSSHD. Values: QUIET, FATAL, ERROR, INFO, VERBOSE, DEBUG, DEBUG1, DEBUG2, and DEBUG3; or left blank to ignore. default is 'INFO'."
  },
  {
    key: "Protocol",
    display_name: "Protocol",
    type: "number",
    display_type: "text_box",
    validator: "^[1|2]$",
    units: "",
    hint: "Specifies the protocol versions OpenSSHD supports. The possible values are 1 and 2. Multiple versions must be comma-separated. Leave blank to ignore. default '2'."
  },
  {
    key: "GatewayPorts",
    display_name: "Gateway port",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether remote hosts are allowed to connect to ports forwarded for the client. Values: yes, no, or left blank to ignore. default 'no'."
  },
  {
    key: "UsePAM",
    display_name: "Use Pam",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Enables the Pluggable Authentication Module interface. Values: yes, no, or left blank to ignore. default is 'yes'."
  },
  {
    key: "RestartSshService",
    display_name: "Restart Ssh Service",
    type: "Boolen",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies whether ssh service should be restarted. Values: yes, no, or left blank to ignore. default is 'yes'."
  },
  {
    key: "MACs",
    display_name: "MAC's",
    type: "text",
    display_type: "text_box",
    validator: "",
    units: "",
    hint: "The supported MACs are:
         hmac-md5
         hmac-md5-96
         hmac-ripemd160
         hmac-sha1
         hmac-sha1-96
         hmac-sha2-256
         hmac-sha2-512
         umac-64@openssh.com
         umac-128@openssh.com
         hmac-md5-etm@openssh.com
         hmac-md5-96-etm@openssh.com
         hmac-ripemd160-etm@openssh.com
         hmac-sha1-etm@openssh.com
         hmac-sha1-96-etm@openssh.com
         hmac-sha2-256-etm@openssh.com
         hmac-sha2-512-etm@openssh.com
         umac-64-etm@openssh.com
         umac-128-etm@openssh.com

      The default is:
         umac-64-etm@openssh.com,umac-128-etm@openssh.com,
         hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,
         hmac-sha1-etm@openssh.com,
         umac-64@openssh.com,umac-128@openssh.com,
         hmac-sha2-256,hmac-sha2-512,hmac-sha1"
  },
  {
    key: "Ciphers",
    display_name: "Ciphers",
    type: "text",
    display_type: "text_box",
    validator: "",
    units: "",
    hint: "The supported ciphers are:
         3des-cbc
         aes128-cbc
         aes192-cbc
         aes256-cbc
         aes128-ctr
         aes192-ctr
         aes256-ctr
         aes128-gcm@openssh.com
         aes256-gcm@openssh.com
         arcfour
         arcfour128
         arcfour256
         blowfish-cbc
         cast128-cbc
         chacha20-poly1305@openssh.com

        The default is:

         chacha20-poly1305@openssh.com,
         aes128-ctr,aes192-ctr,aes256-ctr,
         aes128-gcm@openssh.com,aes256-gcm@openssh.com,
         aes128-cbc,aes192-cbc,aes256-cbc"
  },
  {
    key: "AcceptEnvWhitelist",
    display_name: "Accept Env Whitelist",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "Specifies list of regex values for OpenSSH AcceptEnv environment variables which are allowed. AcceptEnvWhitelist takes precedence over AcceptEnvBlacklist."
  },
  {
    key: "AcceptEnvBlacklist",
    display_name: "Accept Env Blacklist",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "Specifies list of regex values for OpenSSH AcceptEnv environment variables which are prohibitied. Note \b is used to define begining and end of word search and \w* used as a wildcard. For example \bTEST\b would match only on the whole word TEST. \bTEST may match portions of TEST123.
      default is:
      'DYLD_*', 'TERM', 'PATH', 'HOME', 'MAIL', 'SHELL', 'LOGNAME',
      'USER', 'USERNAME', 'LIBPATH', 'SHLIB_PATH', 'LD_*', '_RLD*',
      'LDR_*' "
  },
  {
    key: "OsrPossibleDirs",
    display_name: "OSR Possible Dirs",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "Specifies list of OSR possible directories. Each directory will combine with every file in OsrPossibleFiles.
      default is:
      '/opt/freeware', '/usr', '/usr/local', '/usr/openssh', '/usr/ssh'."
  },
  {
    key: "OsrPossibleFiles",
    display_name: "OSR Possible Files",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "Specifies list of OSR possible files. Each file will combine with every directory in OsrPossibleDirs.
      default: [
        'bin/openssl',            'bin/scp',              'bin/scp2',             'bin/sftp',
        'bin/sftp2',              'bin/sftp-server',      'bin/sftp-server2',     'bin/slogin',
        'bin/ssh',                'bin/ssh2',             'bin/ssh-add',          'bin/ssh-add2',
        'bin/ssh-agent',          'bin/ssh-agent2',       'bin/ssh-askpass',      'bin/ssh-askpass2',
        'bin/ssh-certenroll2',    'bin/ssh-chrootmgr',    'bin/ssh-dummy-shell',  'bin/ssh-keygen',
        'bin/ssh-keygen2',        'bin/ssh-keyscan',      'bin/ssh-pam-client',   'bin/ssh-probe',
        'bin/ssh-probe2',         'bin/ssh-pubkeymgr',    'bin/ssh-signer',       'bin/ssh-signer2',
        'lib/libcrypto.a',        'lib/libssh.a',         'lib/libssl.a',         'lib/libz.a',
        'lib-exec/openssh/sftp-server',   'lib-exec/openssh/ssh-keysign',     'lib-exec/openssh/ssh-askpass',
        'lib-exec/sftp-server',           'lib-exec/ssh-keysign',             'lib-exec/ssh-rand-helper',
        'libexec/openssh/sftp-server',    'libexec/openssh/ssh-keysign',      'libexec/openssh/ssh-askpass',
        'libexec/sftp-server',            'libexec/ssh-keysign',              'libexec/ssh-rand-helper',
        'sbin/sshd',                      'sbin/sshd2',                       'sbin/sshd-check-conf',
        'lib/ssh/sshd',                   'lib/ssh/ssh-keysign'
      ]"
  },
  {
    key: "OsrConfigs",
    display_name: "OSR Configs",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "Specifies list of OSR configuration files.
      default: [
        '/etc/openssh/sshd_config',       '/etc/ssh/sshd_config',             '/etc/ssh/sshd2_config',
        '/etc/ssh2/sshd_config',          '/etc/ssh2/sshd2_config',            '/etc/sshd_config',
        '/etc/sshd2_config',              '/usr/local/etc/sshd_config',       '/usr/local/etc/sshd2_config',
        '/lib/svc/method/sshd'
      ]"
  },
  {
    key: "OsrWhitelist",
    display_name: "OSR Whitelist",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: "SSHD OSR file (config file) whitelist. Files in the list will be ignored during the permission checking."
  },
  {
    key: "enforce_optional_attr",
    display_name: "Enforce Optional Attributes",
    type: "boolean",
    display_type: "single_select",
    validator: "",
    units: "",
    hint: "Controls whether to add/update optional attributes in config file",
    default: true
  },
  {
    key: "IgnoreRhosts",
    display_name: "IgnoreRhosts",
    type: "text",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    hint: "Specifies for RhostsRSAAuthentication or HostbasedAuthentication if .rhosts and .shosts files will be ignored (YES) or used (NO)",
    default: "yes"
  },
  {
    key: "PrintMotd",
    type: "text",
    display_name: "PrintMotd",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    options: "",
    hint: "Indicates if sshd should print the /etc/motd text when a user logs in interactively",
    default: "yes"
  },
  {
    key: "X11Forwarding",
    type: "text",
    display_name: "X11Forwarding",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    options: "",
    hint: "Specifies whether X11 forwarding is permitted or not",
    default: "no"
  },
  {
    key: "X11DisplayOffset",
    type: "text",
    display_name: "X11DisplayOffset",
    display_type: "text_box",
    validator: "[0-9]*",
    units: "",
    options: "",
    hint: "Specifies the first display number available for sshd X11 forwarding",
    default: "10"
  },
  {
    key: "X11UseLocalhost",
    type: "text",
    display_name: "X11UseLocalhost",
    display_type: "text_box",
    validator: "^(?:yes|no)$",
    units: "",
    options: "",
    hint: "Specifies whether sshd should bind the X11 forwarding server to the loopback address (yes) or to the wildcard address (no)",
    default: "yes"
  },
  {
    key: "XAuthLocation",
    type: "text",
    display_name: "XAuthLocation",
    display_type: "text_box",
    validator: "",
    units: "",
    options: "",
    hint: "Specifies the full path and name of the xauth(1) program.",
    default: "/usr/bin/X11/xauth"
  },
  {
    key: "optional_params",
    display_name: "Optional Parameters",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: ""
  }],
  validator: "",
  units: "",
  hint: ""
}
