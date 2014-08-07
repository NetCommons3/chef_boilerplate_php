name 'boilerplate_php'
maintainer 'topaz2'
maintainer_email 'topaz2@m0n0m0n0.com'
license 'GPL v3'
description 'Installs/Configures boilerplate_php'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.4.1'

depends 'apache2'
depends 'application'
depends 'boilerplate'
depends 'composer'
depends 'hhvm'
depends 'jenkins'
depends 'php'
depends 'dotdeb_repo'
depends 'python'

supports 'debian'
supports 'ubuntu'
