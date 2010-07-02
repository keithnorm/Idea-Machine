class IdeasController < ApplicationController
  
  before_filter :authenticate_user!
  
  respond_to :html, :json
  
  def index
    @ideas = Idea.order_by([:votes_counter_cache, :desc])
    
    respond_with(@ideas)
  end

  def show
    @idea = Idea.find(params[:id])

    respond_with(@idea)
  end

  def new
    @idea = Idea.new

    respond_with(@idea)
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def create
    @idea = Idea.new(params[:idea])
    @idea.user = current_user
    respond_to do |format|
      if @idea.save
        format.html { redirect_to(@idea, :notice => 'Idea was successfully created.') }
        format.json  { render :xml => @idea, :status => :created, :location => @idea }
      else
        format.html { render :action => "new" }
        format.json  { render @idea.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @idea = Idea.find(params[:id])

    respond_to do |format|
      if @idea.update_attributes(params[:idea])
        format.html { redirect_to(@idea, :notice => 'Idea was successfully updated.') }
        format.json  { @idea }
      else
        format.html { render :action => "edit" }
        format.json  { render @idea.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy

    respond_to do |format|
      format.html { redirect_to(ideas_url) }
      format.json  { head :ok }
    end
  end
end
