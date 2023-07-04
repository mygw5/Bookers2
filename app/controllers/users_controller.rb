class UsersController < ApplicationController
  
  def index
    @users=User.all
    
  end
  
  def show
    @user=User.find(params[:id])
    @book=@user.books
  end

  def edit
    @user=User.find(params[:id])
  end
  
  def update
    @user=User.find(params[:id])
    @user.update
    redirect_to users_path
    
  end
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
    
  end
end

