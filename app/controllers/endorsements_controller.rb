class EndorsementsController < ApplicationController

def create

	@endorsement = Endorsement.new(params[:endorsement])
	@endorsement.user = User.find(params[:user]).id
	@endorsement.author = current_user

	@endorsement.rating = "3"
	binding.pry
	if @endorsement.save
    format.html { redirect_to @question, notice: 'Rating was successfully created.' }
    User.find(params[:user]).last_3_endorsements
  else
    format.html { redirect_to @question, alert: 'We couldn\'t save that, sorry!' }
    format.json { render json: @question.errors, status: :unprocessable_entity }
  end
end


end