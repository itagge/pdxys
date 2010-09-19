class YogaWorkshopsController < ApplicationController
  
  before_filter :login_required, :only => [:edit, :new, :update, :create, :destroy]
  
  # GET /yoga_workshops
  # GET /yoga_workshops.xml
  def index
    @yoga_workshops = YogaWorkshop.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @yoga_workshops }
    end
  end

  # GET /yoga_workshops/1
  # GET /yoga_workshops/1.xml
  def show
    @yoga_workshop = YogaWorkshop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @yoga_workshop }
    end
  end

  # GET /yoga_workshops/new
  # GET /yoga_workshops/new.xml
  def new
    @yoga_workshop = YogaWorkshop.new
#    @yoga_workshop.studio = current_user.studio

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @yoga_workshop }
    end
  end

  # GET /yoga_workshops/1/edit
  def edit
    @yoga_workshop = YogaWorkshop.find(params[:id])
  end

  # POST /yoga_workshops
  # POST /yoga_workshops.xml
  def create
    @yoga_workshop = YogaWorkshop.new(params[:yoga_workshop])
    @yoga_workshop.user = current_user

    respond_to do |format|
      if @yoga_workshop.save
        flash[:notice] = 'YogaWorkshop was successfully created.'
        format.html { redirect_to workshop_url(@yoga_workshop) }
        format.xml  { render :xml => @yoga_workshop, :status => :created, :location => @yoga_workshop }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @yoga_workshop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /yoga_workshops/1
  # PUT /yoga_workshops/1.xml
  def update
    @yoga_workshop = YogaWorkshop.find(params[:id])

    respond_to do |format|
      if @yoga_workshop.update_attributes(params[:yoga_workshop])
        flash[:notice] = 'YogaWorkshop was successfully updated.'
        format.html { redirect_to workshop_url(@yoga_workshop) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @yoga_workshop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /yoga_workshops/1
  # DELETE /yoga_workshops/1.xml
  def destroy
    @yoga_workshop = YogaWorkshop.find(params[:id])
    @yoga_workshop.destroy

    respond_to do |format|
      format.html { redirect_to workshops_url }
      format.xml  { head :ok }
    end
  end
end
