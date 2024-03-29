class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      flash[:building_added] = "Successfully recorded building!"
      redirect_to new_building_path
    else 
      flash.now[:building_not_added] = "Please fill out the correct info"  
      render :new
    end
  end
  
  def building_params
    params.require(:building).permit(:name, :address, :state, :zip_code, :owner_id, :city,
      :description)
  end

end