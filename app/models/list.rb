class List < ActiveRecord::Base
  attr_accessible :list_name
  has_many :tasks
end