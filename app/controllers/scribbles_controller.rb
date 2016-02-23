class ScribblesController < ApplicationController
  def index
    @scribbles = Scribble.all
  end

  def show
    @scribble = Scribble.find(params[:id])
  end

  def new
    @scribble = Scribble.new
  end
  
  def edit
    @scribble = Scribble.find(params[:id])
  end
  
  def create
    @scribble = Scribble.new(scribble_params)
    
    if @scribble.save
      redirect_to @scribble
    else 
      render 'new'
    end
  end
  
  def update
    @scribble = Scribble.find(params[:id])
    
    if @scribble.update(scribble_params)
      redirect_to @scribble
    else
      render 'edit'
    end
  end
  
  def destroy
    @scribble = Scribble.find(params[:id])
    @scribble.destroy
    
    redirect_to scribbles_path
  end
  
  private
    def scribble_params
      params.require(:scribble).permit(:title, :content)
    end
end
