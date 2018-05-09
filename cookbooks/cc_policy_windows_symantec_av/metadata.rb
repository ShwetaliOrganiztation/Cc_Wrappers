# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_windows_symantec_av'
version          '1.0.2'
maintainer       'Aliasgar Choolawala'
maintainer_email 'aliasgar@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.78'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_windows_symantec_av' ,'= 0.1.3'

attribute        'cc_policy_windows_symantec_av/policy_map',
                   description: 'policy map',
                   type: 'string'                   

supports         'windows', '>= 6.1.0'
