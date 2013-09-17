class LandlordsController < ApplicationController
  def new
    @landlord = Landlord.new
  end
  
  def create
    @landlord = Landlord.new(landlord_params)
    if @landlord.save
      flash[:success] = "Welcome to Great Tenants, #{@landlord.name}!"
      redirect_to @landlord
    else
      render 'new'
    end    
  end
  
  def show
    @landlord = Landlord.find(params[:id])
  end
  
  private
  
    def landlord_params
      params.require(:landlord).permit(:name, :email, :password, :password_confirmation, :image)
    end
end
