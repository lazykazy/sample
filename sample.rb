# case

month = 1

case month
when 3..5
  puts "spring"
when 6..8
  puts "summer"
when 9..11
  puts "fall"
when 1..12
  puts "winter"
else
  puts "no match"
end

hp = 11
puts "yes" if hp >= 10
puts hp > 10 ? "yes" : "no"

puts ""
puts "-----------------------------"

brave_hp = 30
brave_attack = 10
brave_defense = 5

enemy_hp = 30
enemy_attack = 5
enemy_defense = 10

select_attack = rand(4)

if select_attack == 0
  puts "会心の一撃"
  enemy_damage = brave_attack - enemy_defense + rand(20..30)
  enemy_hp = enemy_hp - enemy_damage
else
  puts "勇者の攻撃"
  enemy_damage = brave_attack - enemy_defense + rand(3..5)
  enemy_hp = enemy_hp - enemy_damage
end

puts <<~TXT
       敵に#{enemy_damage}のダメージを与えた
敵の残りHPは#{enemy_hp}だ
     TXT

if enemy_hp > 20
  puts "敵は元気だ"
elsif enemy_hp > 10
  puts "敵はちょっと弱っている"
elsif enemy_hp > 5
  puts "敵はかなり弱っている"
elsif enemy_hp > 0
  puts "敵は瀕死だ"
else
  puts "敵はしんだ"
end

puts ""

select_attack = rand(4)
if select_attack == 0
  puts "痛恨の一撃"
  brave_damage = enemy_attack - brave_defense + rand(20..30)
  brave_hp = brave_hp - brave_damage
else
  puts "敵の攻撃"
  brave_damage = enemy_attack - brave_defense + rand(3..5)
  brave_hp = brave_hp - brave_damage
end

puts <<~TXT
       敵から#{brave_damage}のダメージを受けた。
ここりHPは#{brave_hp}だ。
     TXT
if brave_hp > 20
  puts "勇者は元気だ"
elsif brave_hp > 10
  puts "勇者はちょっと弱っている"
elsif brave_hp > 5
  puts "勇者はかなり弱っている"
elsif brave_hp > 0
  puts "勇者は瀕死だ"
else
  puts "勇者は死んだ"
end

puts ""
