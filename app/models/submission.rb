class Submission < ApplicationRecord
	belongs_to :party

	validates_presence_of :name, :contribution
end
