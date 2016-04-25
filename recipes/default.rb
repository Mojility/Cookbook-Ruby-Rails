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

bash 'rvm' do
    code <<-EOH
    command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
    /usr/bin/curl -sSL https://get.rvm.io | bash -s master
    source ~/.bash_profile
    rvm install 2.2
    rvm @global
    gem install bundler
    EOH
end
