class SubmissionsController < ApplicationController
	def index
		@submission = Submission.new
		@submissions = Submission.all
	end

	def create
		@submission = Submission.new(submission_params)
		@submission.save
		redirect_to root_path
	end

	def edit
		@submission = Submission.find(params[:id])
	end

	def update
		Submission.find(params[:id]).update(submission_params)
		redirect_to root_path
	end

	def destroy
		Submission.find(params[:id]).destroy
		redirect_to root_path
	end

	private

		def submission_params
			params.require(:submission).permit(:name, :contribution)
		end
end
