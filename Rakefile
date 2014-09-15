REPO = 'git@github.com:cugik/puppet.git'

SSH = 'ssh -A -t -l cugik'

desc "Bootstrap Puppet on ENV['CLIENT'] with  hostname ENV['HOSTNAME']"
task :test do
  client = ENV['CLIENT']
  hostname = ENV['HOSTNAME'] || client
  commands = <<BOOTSTRAP
sudo hostname #{hostname} && \
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb && \
sudo dpkg -i puppetlabs-release-precise.deb && \
sudo apt-get update && sudo apt-get -y install git puppet && \
git clone #{REPO} puppet && \
sudo puppet apply --modulepath=/home/cugik/puppet/modules /home/cugik/puppet/manifests/site.pp && \
echo $(date) >> /tmp/aaa.txt 
BOOTSTRAP
  sh "#{SSH} #{client} '#{commands}'"
end

task :bootstrap do
  client = ENV['CLIENT']
  hostname = ENV['HOSTNAME'] || client
  commands = <<BOOTSTRAP
sudo hostname #{hostname} && \
sudo su - c 'echo #{hostname} >/etc/hostname' && \
echo bbb > /tmp/aaa.txt
#wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb 
#wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb && \
#sudo dpkg -i puppetlabs-release-precise.deb && \
#sudo apt-get update && sudo apt-get -y install git puppet && \
#git clone #{REPO} puppet && \
#sudo puppet apply --modulepath=/home/cugik/puppet/modules /home/cugik/puppet/manifests/site.pp
BOOTSTRAP
  sh "#{SSH} #{client} '#{commands}'"
end
