# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_linux_mcafee'
version          '1.0.2'
maintainer       'Aliasgar Choolawala'
maintainer_email 'aliasgar@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.78'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_linux_mcafee' ,'= 0.1.2'

attribute        'cc_policy_linux_mcafee/policy_map',
                   description: 'policy map',
                   type: 'string'

supports         'redhat', '>= 5.0'
supports         'centos', '>= 6.0'
supports         'suse', '>= 11.0'
