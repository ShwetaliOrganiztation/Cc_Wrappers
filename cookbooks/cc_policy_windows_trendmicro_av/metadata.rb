# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2016 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_windows_trendmicro_av'
version          '1.0.4'
maintainer       'Lim Kian Shin'
maintainer_email 'shinkl@sg.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.208'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_windows_trendmicro_av' ,'= 0.1.6'

attribute        'cc_policy_windows_trendmicro_av/policy_map',
                   description: 'policy map',
                   type: 'string'

supports         'windows', '>= 6.1.0'
