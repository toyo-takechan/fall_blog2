# メインのサンプルユーザーを1人作成する
User.create!(name: "Example User",
              email: "example@fallblog.org",
              password:            "foobar",
              password_confirmation: "foobar",
              admin: true)

# 追加のユーザーをまとめて生成する
21.times do |n|
  name  = Faker::JapaneseMedia::OnePiece.character #=> "Monkey D. Luffy"
  email = "example-#{n+1}@fallblog.org"
  password = "password"
  User.create!(name: name,
                email: email,
                password:              password,
                password_confirmation: password)
end
# ユーザーの一部を対象にマイクロポストを生成する
users = User.order(:created_at).take(22)
5.times do
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi #=> "Gomu Gomu no Mi"
  users.each { |user| user.microposts.create!(content: content) }
end
