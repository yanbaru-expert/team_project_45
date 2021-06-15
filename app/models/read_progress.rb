class ReadProgress < ApplicationRecord
  belongs_to :user
  belongs_to :text

  validates :user_id, uniquness: {
                        scope: :text_id,
                        message: "は同じ教材に2回以上読破済みとすることは出来ません"、
                      }
end