class Driver < ActiveRecord::Base
  has_many :assignments
  has_many :coaches, through: :assignments
end
