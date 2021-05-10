class Content < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  
  with_options presence: true do
    validates :target_name
    validates :target_info
    validates :target_date
    validates :study_time
  end
end
