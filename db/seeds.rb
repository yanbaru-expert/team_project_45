require "csv"

EMAIL = "test@example.com"
PASSWORD = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts "ユーザーの初期データインポートに成功しました。"
end

# 動画教材のcsvインポート
Movie.destroy_all
CSV.foreach("db/csv_data/movie_data.csv", headers: true) do |row|
  Movie.create!(
    genre: row["genre"],
    title: row["title"],
    url: row["url"],
  )
end
puts "動画の初期データインポートに成功しました。"

# テキスト教材のcsvインポート
Text.destroy_all
CSV.foreach("db/csv_data/text_data.csv", headers: true) do |row|
  Text.create!(
    genre: row["genre"],
    title: row["title"],
    content: row["content"],
  )
end
puts "テキストの初期データインポートに成功しました。"

# 管理者が存在しないときだけ作成
AdminUser.find_or_create_by!(email: "admin@example.com") do |admin_user|
  admin_user.password = PASSWORD
  puts "管理者の初期データインポートに成功しました。"
end
