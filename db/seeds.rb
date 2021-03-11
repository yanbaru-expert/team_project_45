require "csv"

EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

# 動画教材のcsvインポート
Movie.destroy_all
CSV.foreach('db/csv_data/movie_data.csv', headers: true) do |row|
  Movie.create(
    genre: row["genre"].to_i,
    title: row["title"],
    url: row["url"]
  )
end