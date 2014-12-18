class Submission < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: :true
  validates :name, presence: true, length:  {maximum: 20}
  validates :skill, presence: true
  validates :email, presence: true, length:  {maximum: 50}, uniqueness: true
  validates :phone, presence: true,  length: { maximum: 12, message: "no. is not valid"}, uniqueness: true
  validates :location, presence: true
  validates :visa, presence: true
  validates :rate, presence: true
  validates :availability, presence: true
end
