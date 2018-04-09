# #コメント
# puts 'こんにちは'

# hensuu = 'なんらか'
# puts hensuu

# fruits = ["おにぎり","オニギリ","onigiri"]
# fruits.each do |fruit|
#   puts fruit
# end

# fruits = {
#   'apple' => 'appleaa',
#   'apple2' => 'apple2aa',
#   'apple3' => 'apple3aa',
# }
# puts fruits["apple"]

# str1 = 'あいう'
# str2 = 'えお'
# puts str1 + str2


# puts 1<2
# puts 2<1

# result= (1==1) && (2==2)
# puts result

# result= (1==1) || (2==1)
# puts result

# if 10 < 5
#   puts 'aaa'
# else
#   puts "ccc"
# end

# if 10 > 5
#   puts 'bbb'
# end

# number =6

# if number <5 
#   puts number.to_s + 'c'
# elsif number <7
#   puts number.to_s + 'fff'
# else
#   puts number.to_s + 'd'
# end


# [1,2,3,4,5].each do |number|
#   puts number
# end

# (1..5).each do |number|
#   puts number
# end

# fruits = {
# apple: "りんご",
# orange: "オレンジ",
# banana: 'バナナ',
# }

# fruits.each do |eng, jpn|
#   puts eng
#   puts 'a'
#   puts jpn
# end


# 10.times do
#   number = rand(10)
  
#   if number < 5
#     puts number.to_s + '小さい'
#   else
#     puts  number.to_s + '大きい'
#   end
# end


# def sum(a,b)
#   result = 0
#   (a..b).each do |number|
#     result += number
#   end 
#   # puts 'a' + a.to_s 
#   # puts 'b' + b.to_s
#   # puts result
  
#   result
# end

# sum1 = sum(1,90)
# puts sum1


# class Slime
  
#   attr_accessor :type, :hp, :power  
#   #attr_accessorクラス内で変数を定義するためのメソッド
  
#   def initialize
#     #initialize はインスタンスを生成するときに最初に呼び出されるメソッドです
#     self.type = 'スライム'
#     self.hp = 10
#     self.power = 3
#   end
  
#   def attack(character_name)
#     puts "#{self.type} #{character_name}を攻撃して#{self.power}ポイントのダメージを与えた！"
#   end 
# end
  
#   slime_A = Slime.new
#   slime_A.attack('aaaa')
  
#   puts slime_A
#   p slime_A
  
  
  # class Character
  #   attr_accessor :type , :hp, :power
    
  #   def initialize(type, hp, power)
  #     self.type = type
  #     self.hp = hp
  #     self.power = power
  #   end
    
  #   def name
  #     self.type
  #   end
    
  #   def attack(character)
  #     character.hp -= self.power
  #     puts "#{self.name}が#{character.name}に#{self.power}ダメージ"
    
  #     if character.hp <= 0
  #       self.defeat(character)
  #     end
  #   end
    
  #   def defeat(character)
  #     puts "#{self.name}が#{character.name}たおした"
  #   end
    
  # end
  
  # class Slime  < Character
  #   attr_accessor :suffix
    
  #   def initialize(suffix)
  #     super('スライム',10,3)  #super は、親クラスのメソッドを使うということです。
  #     self.suffix = suffix
  #   end
    
  # end 
  
  # class Hero < Character
    
  #   def initialize
  #     super("主人公",1000,30)
  #   end
    
  # end 
  
  
  # hero = Hero.new
  # # slime_A = Slime.new("A")
  
  # # slime_A.attack(hero)
  # # hero.attack(slime_A)
  
  
  # character = Character.new("",0,0) 
  
  # puts hero.class
  
  # puts character.class
  
  
  # puts Character.superclass
  
  
  # class Character
  #   attr_accessor  :hp, :power
    
  #   def initialize( hp, power)
  #     self.hp = hp
  #     self.power = power
  #   end
    
  #   # def name
  #   #   ''
  #   # end
    
  #   def attack(character)
  #     character.hp -= self.power
  #     puts "#{self.name}が#{character.name}に#{self.power}ダメージ"
    
  #     if character.hp <= 0
  #       self.defeat(character)
  #     end
  #   end
    
  #   def defeat(character)
  #     puts "#{self.name}が#{character.name}たおした"
  #   end
    
  # end
  
  # class Slime  < Character
  #   @@type = 'スライム'
    
  #   attr_accessor :suffix

  #   def initialize(suffix)
  #     super(10,3)  #super は、親クラスのメソッドを使うということです。
  #     self.suffix = suffix
  #   end

  #   def name
  #     @@type + self.suffix
  #   end
    
  #   def self.description
  #     puts @@type + 'は最弱'
  #   end
  # end 
  
  # class Hero < Character
  #   @@type = '主人公'
    
  #   def initialize
  #     super(1000,30)
  #   end
    
  #   def name
  #     @@type  
  #   end
    
  #   def self.description
  #     puts @@type + 'だ！！'  
  #   end
    
  # end 
  
  
  # hero = Hero.new
  # slime_A = Slime.new("A")
  
  # slime_A.attack(hero)
  # hero.attack(slime_A)
  
  # Hero.description
  
  # Slime.description
  
  
  
  # class A
    
  #   def z
  #     x
  #     y
  #   end
    
    
  #   def x
  #     puts 'Public!!'
  #   end
    
  #   private 
    
  #   def y
  #     puts 'private!!'
  #   end
  # end
  
  # a = A.new
  # a.x
  # a.z
  # # a.y
  
  # time = Time.now
  # puts time
  
  # time2 = time.getlocal("+09:00")
  
  # puts time2
  
  
  # module TechAcademy
  #   module RPG
  #     module Characters
  #       class Character
          
  #         character = Character.new
  #         puts character
  #       end
  #     end
  #   end
  # end
  
  # character = TechAcademy::RPG::Characters::Character.new 
  # puts character
  
  require 'erb'
  
  def web_page
    <<-PAGE
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTG-8">
    <title>タイトル</title>
  </head>
  <body>
    <% name = "太郎" %>
    <% time_jpn = Time.now.getlocal("+09:00") %>
    <p>今、<%= time_jpn %>時です。</p>
    <% if 6 <= time_jpn.hour && time_jpn.hour < 12 %>
      <p>おはよう <%= name %>さん</p>
    <% elsif 12 <= time_jpn.hour && time_jpn.hour < 18 %>
      <p>こんちには <%= name %>さん</p>
    <% else %>
      <p>こんばんは<%= name %>さん</p>
    <% end %>  
    
    <ul>
      <% (1..9).each do |num| %>
        <li> <%= num %></li>
      <% end %>
    <ul>
  </body>
</html>
    PAGE
  end
  
  erb = ERB.new(web_page)
  result = erb.result
  puts result
  
  
  