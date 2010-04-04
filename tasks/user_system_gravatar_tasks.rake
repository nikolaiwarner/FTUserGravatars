namespace 'user_system_gravatar' do

  desc 'run migrations'
  task 'migrate' => 'environment' do
    ActiveRecord::Base.establish_connection
    require File.join(File.dirname(__FILE__), '..', 'db', 'user_system_gravatar_migrator')
    UserSystemGravatarMigrator.migrate(
      File.join(File.dirname(__FILE__), '..', 'db', 'migrate'),
      ENV['VERSION'] ? ENV['VERSION'].to_i : nil
    )
  end

end

task :install => ['user_system_gravatar:migrate']