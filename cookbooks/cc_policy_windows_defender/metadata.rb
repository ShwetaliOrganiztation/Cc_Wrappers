# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_windows_defender'
version          '1.0.0'
maintainer       ''
maintainer_email ''
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.110'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_windows_defender' ,'= 0.1.0'

attribute        'cc_policy_windows_defender/policy_map',
                   description: 'policy map',
                   type: 'string'                   

supports         'windows', '>= 6.1.0'
