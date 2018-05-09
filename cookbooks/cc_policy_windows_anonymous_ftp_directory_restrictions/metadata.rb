# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_windows_anonymous_ftp_directory_restrictions'
version          '1.0.3'
maintainer       'Bidisha Sanchiher'
maintainer_email 'bidisha@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.9'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_windows_anonymous_ftp_directory_restrictions' ,'= 0.1.16'

attribute        'cc_policy_windows_anonymous_ftp_directory_restrictions/users',
                   description: 'FTP user names, for whom we will check access permissions.',
					type: 'array',
                    default: ['All Anonymous Users']

supports 'windows', '>= 6.1.0'
