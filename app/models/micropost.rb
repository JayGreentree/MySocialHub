class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :content, length: { maximum: 140 }
  def user
    User.find(self.user_id).name
  end
end
