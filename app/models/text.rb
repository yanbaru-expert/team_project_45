class Text < ApplicationRecord
  belongs_to :user
  has_many :read_progresses, dependent: :destroy

  validates :genre, :title, :content, presence: true
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

  def clicked_read_button?(user)
    read_progresses.exists?(user_id: user.id)
  end
end
