# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
grandmom_name_hash = {:"金美滿" =>"https://ed038d6765bee7fe127f73ed53bc6f6e8900d73d.googledrive.com/host/0B_8CuuG9OgYzTElFeVRWaVd4TDg/ama1.jpg", 
                      :"安潔莉納裘莉"=>"https://ed038d6765bee7fe127f73ed53bc6f6e8900d73d.googledrive.com/host/0B_8CuuG9OgYzTElFeVRWaVd4TDg/ama2.jpg", 
                      :"超級阿嬤" =>"https://ed038d6765bee7fe127f73ed53bc6f6e8900d73d.googledrive.com/host/0B_8CuuG9OgYzTElFeVRWaVd4TDg/ama3", 
                      :"陳樹菊" => "https://ed038d6765bee7fe127f73ed53bc6f6e8900d73d.googledrive.com/host/0B_8CuuG9OgYzTElFeVRWaVd4TDg/%E9%98%BF%E7%BD%B5%E9%AB%94%E6%93%8D.jpg", 
                      :"陳菊" => "https://ed038d6765bee7fe127f73ed53bc6f6e8900d73d.googledrive.com/host/0B_8CuuG9OgYzTElFeVRWaVd4TDg/ama4.jpg", 
                      :"法律蓮夢露" => "https://ed038d6765bee7fe127f73ed53bc6f6e8900d73d.googledrive.com/host/0B_8CuuG9OgYzTElFeVRWaVd4TDg/ama5.jpg"}

if Grandmom.all.blank?
  grandmom_name_hash.each do |key, value|
    Grandmom.create(name: key, avatar: value)
  end  
end

skill_arr = ["心情", "閒聊", "知識", "講古"]
if Skill.all.blank?
  skill_arr.each do |skill|
    Skill.create(name: skill)
  end  
end

if Grandmom.any? && Skill.any?
  Grandmom.all.each do |gm|
    Skill.all.sample(2).each do|sk|
      gm.grandships.create(skill_id: sk.id)
    end
  end
end
