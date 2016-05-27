#
# Cookbook Name:: CookbookRubyRails
# Recipe:: default
#
# Copyright (c) 2016 Mojility Inc, All Rights Reserved.

package 'nginx'
package 'curl'
package 'gawk'
package 'g++'
package 'libyaml-dev'
package 'libsqlite3-dev'
package 'sqlite3'
package 'autoconf'
package 'libgmp-dev'
package 'libgdbm-dev'
package 'libncurses5-dev'
package 'automake'
package 'libtool'
package 'bison'
package 'pkg-config'
package 'libffi-dev'
package 'nodejs'

username = 'vagrant'

bash 'rvm' do
    su = "sudo su -l #{username} -c "
    code <<-EOH
    #{su} "command curl -sSL https://rvm.io/mpapis.asc | gpg --import -"
    #{su} "/usr/bin/curl -sSL https://get.rvm.io | bash -s master"
    #{su} "source ~/.bash_profile"
    #{su} "rvm install 2.2"
    #{su} "rvm @global"
    #{su} "gem install bundler"
    EOH
end
