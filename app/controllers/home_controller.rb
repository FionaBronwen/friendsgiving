class HomeController < ApplicationController
	def index
		@submission = Submission.new
		@submissions = Submission.all
	end

	def create()
		@submission = Submission.new(params [:name, :contribution])
		@submission.save	
		redirect_to root_url
	end
end
