# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_linux_auditd'
version          '1.0.7'
maintainer       'Robert Filepp'
maintainer_email 'filepp@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_linux_auditd' ,'= 0.1.10'

attribute        'cc_policy_linux_auditd/policy_map',
                   description: 'policy map',
                   type: 'string'                   

supports         'redhat', '>= 5.0'
supports         'centos', '>= 5.0'
supports         'suse', '>= 11.0'
supports         'ubuntu', '>= 12.0.4'
