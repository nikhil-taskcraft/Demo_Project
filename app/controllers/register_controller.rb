class RegisterController < ApplicationController
  def index
    @register = Register.all
  end

  def show
    @register = Register.find(params[:id])
  end

  def new
    @register = Register.new
  end

  def create 
     
    @register = Register.new(register_params)

    if @register.save  

        PostMailer.with(user:@register).post_created.deliver   

        redirect_to @register       
     else
       render :new, status: :unprocessable_entity

    end

  end

  def edit
    @register = Register.find(params[:id])
  end

  def update

    @register = Register.find(params[:id])   

     if @register.update(register_params)

        redirect_to @register       
     else
        render :edit, status: :unprocessable_entity

    end
  end

  def delete
    
    @register = Register.find(params[:id])
    
  end

  def destroy
     
    @register = Register.find(params[:id])
    @register.destroy
    redirect_to '/register'
  end

  private  

  def register_params    
    params.required(:register).permit(:name,:email,:gender,:city,:about_me)
  end
end

