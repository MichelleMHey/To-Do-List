class Task < ActiveRecord::Base
  attr_accessible :title, :list_id
  belongs_to :list
end