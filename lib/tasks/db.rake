namespace :db do

  desc "Backing up database"
  task :backup => :environment do
    conf = ActiveRecord::Base.configurations
    username = conf[Rails.env]["username"]
    password = conf[Rails.env]["password"]
    database = conf[Rails.env]["database"]
    system "mysqldump --opt --u #{username} -p #{database} > ../db_backup/#{Time.now.to_i}.sql"
  end

end
