######## Seed

require 'faker'
def seed
chars = 'abcdefghjkmnpqrstuvwxyz0123456789'
puts @rand_chars
$i = 0
$num = 10
@users1 = {}

while $i < $num  do
  fake_nickname = Faker::Internet.user_name(Faker::GameOfThrones.character, %w(. _ -))
  fake_email= Faker::Internet.free_email(fake_nickname)
  @rand_chars = rand(chars.size)
  fake_email = @rand_chars.to_s + fake_email
  fake_email = fake_email.gsub!(/[\.-]/,'_')
  fake_pass= Faker::Internet.password(8)

  #  @users1[fake_email] = User.new(
  #      email: fake_email,
  #      password: fake_pass,
  #      nickname: fake_nickname
  #  )

  puts fake_email
  puts fake_nickname
  puts fake_pass
  puts ""

   $i=$i+1
end

######## End Seed
end

seed
