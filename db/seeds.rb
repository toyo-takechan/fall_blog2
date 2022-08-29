# メインのサンプルユーザーを1人作成する
User.create!(name: "Example User",
              email: "example@fallblog.org",
              password:            "foobar",
              password_confirmation: "foobar",
              admin: true)

# 追加のユーザーをまとめて生成する
49.times do |n|
  name =Faker::JapaneseMedia::OnePiece.akuma_no_mi #=> "Gomu Gomu no Mi"
  email = "example-#{n+1}@fallblog.org"
  password = "password"
  User.create!(name: name,
                email: email,
                password:              password,
                password_confirmation: password)
end
