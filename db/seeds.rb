# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
grandmom_name_arr = ["金美滿", "安潔莉納裘莉", "青稞掃", "陳樹菊", "陳菊", "張慧嬤"]
if Grandmom.all.blank?
  grandmom_name_arr.each do |name|
    Grandmom.create(name: name)
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
