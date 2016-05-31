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
package 'postgresql'
package 'libpq-dev'

username = 'vagrant'
su = "sudo su -l #{username} -c "

bash 'rvm' do
    code <<-EOH
    #{su} "command curl -sSL https://rvm.io/mpapis.asc | gpg --import -"
    #{su} "/usr/bin/curl -sSL https://get.rvm.io | bash -s master"
    #{su} "source ~/.bash_profile"
    #{su} "rvm install 2.2"
    #{su} "rvm 2.2@global"
    #{su} "gem install bundler"
    #{su} "rvm --default 2.2"
    EOH
end

bash 'db-dev' do
  code <<-EOH
    sudo su -l postgres -c \"psql -d template1 -c 'create user vagrant superuser'\"
  EOH
end