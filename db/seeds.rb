# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "這個種子檔會自動建立一個admin帳號, 並且創建 10 個 public jobs, 以及10個hidden jobs"

jobs_title =["化验员","车间质检","原料内勤","业务员","出纳","生产内勤","主要会计"]
jobs_description =["有工作经验","工作认真细致","年龄不超过30岁","欢迎应届毕业生","勤劳踏实"]

create_account = User.create([email: '615760433@qq.com', password: 'dmy067', password_confirmation: 'dmy067', is_admin: 'true'])
puts "Admin account created."

# create_jos = for i in 1..10 do
#   Job.create!([title: "Job no.#{i}", description: "這是用種子建立的第 #{i} 個Public工作", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
# end
# puts "10 Public jobs created."

# create_jos = for i in 1..10 do
#   Job.create!([title: "Job no.#{i+10}", description: "這是用種子建立的第 #{i+10} 個Hidden工作", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true"])
# end
create_jobs = for i in 1...5 do 
	title_test = jobs_title[rand(0..6)]
    description_test =jobs_description[rand(0..4)]
    Job.create!([title: title_test,description: description_test,wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden:"false"])
     end
puts "5 Public jobs created."

create_jobs = for i in 1...5 do 
	title_test =jobs_title[rand(0..6)]
    description_test =jobs_description[rand(0..4)]
    Job.create!([title: title_test,description: description_test,wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden:"true"])
    end
puts "5 Hidden jobs created."
