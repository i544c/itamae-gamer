user "steam" do
  # steamer
  password "$6$helloworld$SHlsWGLw6hg/Qca6d4jXdF5R3nW8rTtalsyTBCf6SsrvML9fm3fWlevPVDLqyAnEzXizg9cbA61VjLRUh5v85."
  create_home true
end

# Install steamcmd
package "software-properties-common"
execute "add-apt-repository non-free"
execute "dpkg --add-architecture i386"
execute "apt update"
execute "echo steam steam/question select 'I AGREE' | debconf-set-selections"
execute "echo steam steam/license note '' | debconf-set-selections"
package "lib32gcc1"
package "steamcmd"
