class SubmissionsController < ApplicationController
	def index
		@submission = Submission.new
		@submissions = Submission.all
	end

	def create
		@submission = Submission.new(submission_params)
		if @submission.save
			flash[:warning] = "Thank you for your lit contribution 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥"
		else
			flash[:danger] = @submission.errors.full_messages
		end
		redirect_to
	end

	def edit
		@submission = Submission.find(params[:id])
	end

	def update
		update = Submission.find(params[:id]).update(submission_params)
		if update 
			flash[:warning] = 'Lit Update! Lit. 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥'
			redirect_to root_path
		else 
			flash[:danger] = 'Nah fam, you need to contribute 😒🖕'
			redirect_to edit_submission_path(params[:id])
		end
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
