class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end
  def new
    @supplier = Supplier.new
  end
  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      flash[:success] = "You are now a new supplier with Pedals that Rock!"
      redirect_to "/suppliers/#{@supplier.id}"
    else
      render :new
    end
  end
  def show 
    @supplier = Supplier.find_by(id: params[:id])
  end
  def edit
    @supplier = Supplier.find_by(params[:supplier])
  end
  def update
    @supplier = Supplier.find_by(id: params[:id])
    if @supplier.update(supplier_params)
      flash[:success] = "You have updated your supplier info!"
      redirect_to "/suppliers/#{@supplier.id}"
    else
      render :edit
    end
  end
  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(active: false)
    flash[:danger] = "Supplier changed to inactive"
    redirect_to "/suppliers/#{@supplier.id}"
  end

  private

  def supplier_params
    params.require(:supplier).permit(:company_name, :first_name, :last_name, :phone)
  end
  
end
