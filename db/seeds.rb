# メインのサンプルユーザーを1人作成する
User.create!(name: "Example User",
              email: "example@fallblog.org",
              password:            "foobar",
              password_confirmation: "foobar",
              admin: true,
              activated: true,
              activated_at: Time.zone.now)
#動作チェック用のユーザーを作成する。
User.create!(name: "Test User",
              email: "test@fallblog.org",
              password:              "testtest",
              password_confirmation: "testtest",
              activated: true,
              activated_at: Time.zone.now)
User.create!(name: "Keshiki User",
              email: "keshiki@fallblog.org",
              password:               "keshiki",
              password_confirmation:  "keshiki",
              activated: true,
              activated_at: Time.zone.now)
User.create!(name: "kaiga User",
              email: "kaiga@fallblog.org",
              password:                "kaigakaiga",
              password_confirmation:    "kaigakaiga",
              activated: true,
              activated_at: Time.zone.now)

# 追加のユーザーをまとめて生成する
21.times do |n|
  name  = Faker::JapaneseMedia::OnePiece.character #=> "Monkey D. Luffy"
  email = "example-#{n+1}@fallblog.org"
  password = "password"
  User.create!(name: name,
                email: email,
                password:              password,
                password_confirmation: password,
                activated: true,
                activated_at: Time.zone.now)
end
# ユーザーの一部を対象にマイクロポストを生成する
users = User.order(:created_at).take(22)
5.times do
  content = Faker::JapaneseMedia::OnePiece.akuma_no_mi #=> "Gomu Gomu no Mi"
  users.each { |user| user.microposts.create!(content: content) }
end
