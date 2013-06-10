class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create( params[:list] )
    flash[:notice] = "Your list has now been created!"
    redirect_to :root
  end

  def show #see http://guides.rubyonrails.org/v2.3.11/getting_started.html => section 6.10
    @list = List.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render :xml => @list }
    end
  end
end