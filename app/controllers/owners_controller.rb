class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      flash[:owner_added] = 'Succesfully recorded owner!'
      redirect_to new_owner_path
    else 
      flash.now[:owner_not_added] = "Please fill out the correct info" 
      render :new
    end
  end

  private
  
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email_address, :companny_name)
  end


end
