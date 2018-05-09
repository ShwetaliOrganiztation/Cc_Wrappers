# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2017 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_linux_ssh_keys'
version          '1.0.3'
maintainer       'Aliasgar Choolawala'
maintainer_email 'aliasgar@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends          'chef_handler'
depends          'cobalt_ohai'
depends          'policy_linux_ssh_keys' ,'= 0.1.3'

attribute        'cc_policy_linux_ssh_keys/policy_map',
                   description: 'policy map',
                   type: 'string'

supports         'redhat', '>= 5.0'
supports         'centos', '>= 5.0'
supports         'suse', '>= 11.0'
supports         'ubuntu', '>= 14.04'
