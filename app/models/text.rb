class Text < ApplicationRecord
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
  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze

  PHP_GENRE_LIST = %w[php].freeze

  def self.filter_by(genre)
    if genre == "php"
      Text.where(genre: Text::PHP_GENRE_LIST)
    else
      Text.where(genre: Text::RAILS_GENRE_LIST)
    end
  end

  def clicked_read_button?(user)
    read_progresses.exists?(user_id: user.id)
  end

  def self.left_join_read_texts(user_id)
    join_sql = <<~SQL.squish
      LEFT OUTER JOIN read_progresses ON read_progresses.text_id = texts.id
                                      AND read_progresses.user_id = #{user_id}
    SQL
    joins(join_sql)
  end
end
