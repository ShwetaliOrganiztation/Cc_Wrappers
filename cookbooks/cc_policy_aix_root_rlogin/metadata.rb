# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_aix_root_rlogin'
version          '1.0.0'
maintainer       'Khushboo Kumari'
maintainer_email 'khushboo@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.9'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_aix_root_rlogin' ,'= 0.1.0'

attribute        'policy_aix_root_rlogin/policy_map',
                   description: 'policy map',
                   type: 'string'                   

supports         'aix'
