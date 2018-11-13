class Party < ApplicationRecord
  has_many :submissions

  validates_uniqueness_of :name
  validates_presence_of :name
end
