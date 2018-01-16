class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def index
		@author = Author.all
	end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author = Author.create(author_params)
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def update
    @author = Author.find(params[:id])
    @author.assign_attributes(author_params)
    if @author.valid?
      @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
