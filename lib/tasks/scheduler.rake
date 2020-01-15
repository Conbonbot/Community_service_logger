desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
    puts "Updating Feed..."
    @users = User.all
    @users.each do |user|
        print "Class of: " + user.grade.to_s + ", Student ID: " + user.student_id.to_s
    end
    puts "Done"
end

task :send_reminders => :environment do
    User.send_reminders
end