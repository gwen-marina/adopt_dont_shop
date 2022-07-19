class ApplicantPetsController < ApplicationController

  def show 
    @applicant = Applicant.find(params[:id])
    pet = Pet.where(id: params[:pet_id])
    @applicant.pets << pet
    @pets = []
    redirect_to applicant_show_url
  end
end