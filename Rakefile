SSH = 'ssh -A -i ~/git/cugik/cugik.pem -l cugik'

desc "Run Puppet on ENV['CLIENT']"
  task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end
