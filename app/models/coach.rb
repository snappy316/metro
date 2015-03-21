class Coach < ActiveRecord::Base
  has_many :assignments
  has_many :drivers, through: :assignments
end
