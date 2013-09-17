class TenantsController < ApplicationController
  
  def index
    @tenants = Tenant.all
  end
  
  def new
    @tenant = Tenant.new
  end
  
  def show
    @tenant = Tenant.find(params[:id])
  end
  
  def create
    @tenant = Tenant.new(tenant_params)
    if @tenant.save
      flash[:success] = "Welcome to Great Tenants, #{@tenant.name}!"
      redirect_to @tenant
    else
      render 'new'
    end
  end
  
  private
  
    def tenant_params
      params.require(:tenant).permit(:name, :email, :password, :password_confirmation, :image)
    end
end
