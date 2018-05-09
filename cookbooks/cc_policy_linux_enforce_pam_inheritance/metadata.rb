# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_linux_enforce_pam_inheritance'
version          '1.0.1'
maintainer       'Brian Murray'
maintainer_email 'bmurray2@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.9'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_linux_enforce_pam_inheritance' ,'0.2.11'

attribute        'cc_policy_linux_enforce_pam_inheritance/policy_map',
                   description: 'policy map',
                   type: 'string'                    

supports         'suse'
supports         'rhel'
supports         'debian'
