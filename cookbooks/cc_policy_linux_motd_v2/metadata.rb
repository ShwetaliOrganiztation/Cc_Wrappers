# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2017 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_linux_motd_v2'
version          '1.0.2'
maintainer       'Akshada Sheth'
maintainer_email 'akshada@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.103'
depends           'chef_handler'
depends           'cobalt_ohai'
depends           'policy_linux_motd_v2' ,'= 0.0.3'

attribute        'cc_policy_linux_motd_v2/policy_map',
                   description: 'policy map',
                   type: 'string'                   

supports         'redhat', '>= 5.0'
supports         'centos', '>= 5.0'
supports         'suse', '>= 11.0'
supports         'ubuntu', '>= 12.0.4'

