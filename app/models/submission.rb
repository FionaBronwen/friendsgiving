class Submission < ApplicationRecord
	validates_uniqueness_of :name
	validates_presence_of :name, :contribution
end
