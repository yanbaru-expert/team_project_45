class Movie < ApplicationRecord
  has_many :watch_progresses, dependent: :destroy

  RAILS_GENRE_LIST = %w[basic git ruby rails]
  validates :genre, :title, :url, presence: true
  enum genre: {
    invisible: 0,
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5,
    html: 6,
    javascript: 7,
    typescript: 8,
    react: 9,
    vue: 10,
    angular: 11,
    aws: 12,
    money: 13,
    talk: 14,
    live: 15,
  }

  def watch_progressed_by?(user)
    watch_progresses.any? { |watch_progress| watch_progress.user_id == user.id }
  end

end
