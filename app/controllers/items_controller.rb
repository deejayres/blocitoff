class ItemsController < ApplicationController
  def create
    @user = current_user
    @item = @user.items.build(item_params)

    if @item.save
      flash[:notice] = "To-do item saved."
      redirect_to root_path
    else
      flash.now[:alert] = "Something went wrong saving your to-do.  Please try again."
      redirect_to root_path
    end
  end

  def destroy
    @user = current_user
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "You did it! Good job!"
      # redirect_to root_path
    else
      flash.now[:alert] = "There as an error completing your to-do, please try again."
      # redirect_to root_path
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
