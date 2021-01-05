# 配列
users =["saitou", "yoshida", "tanaka"]

users.each do |name|
  puts "hello #{name}"
end
puts ""
puts "---------------------"

# item
items = ["pen", "note", "keyboard", "mouse"]

items.each.with_index(1) do |name, i|
  puts "No#{i} #{name}"
end

puts ""
puts "-----------------------------------------"

# question
user_list = ["Yanagi", "Saitou", "Aoyagi", "Imai", "Obata", "Takahashi"]
user_list.shuffle!

team_a = []
team_b = []

user_list.each.with_index(1) do |user, i|
  # 奇数ならtrue 偶数ならfalse
  if i.odd?
    team_a << "#{user}"
  else
    team_b << "#{user}"
  end
end

text = "TeamA\n"
team_a.each.with_index(1) do |member, i|
  text += "No.#{i}:#{member}さん\n"
end

text +="\nTeamB\n"
team_b.each.with_index(1) do |member, i|
  text += "No.#{i}:#{member}さん\n"
end

puts text