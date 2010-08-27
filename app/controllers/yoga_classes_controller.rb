class YogaClassesController < ApplicationController
  
  before_filter :login_required, :only => [:edit, :new, :update, :create, :destroy]
  
  # GET /yoga_classes
  # GET /yoga_classes.xml
  def index
    @yoga_classes = YogaClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @yoga_classes }
    end
  end

  # GET /yoga_classes/1
  # GET /yoga_classes/1.xml
  def show
    @yoga_class = YogaClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @yoga_class }
    end
  end

  # GET /yoga_classes/new
  # GET /yoga_classes/new.xml
  def new
    @yoga_class = YogaClass.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @yoga_class }
    end
  end

  # GET /yoga_classes/1/edit
  def edit
    @yoga_class = YogaClass.find(params[:id])
  end

  # POST /yoga_classes
  # POST /yoga_classes.xml
  def create
    @yoga_class = YogaClass.new(params[:yoga_class])
    @yoga_class.studio = current_user.studio

    respond_to do |format|
      if @yoga_class.save
        flash[:notice] = 'YogaClass was successfully created.'
        format.html { redirect_to class_url(@yoga_class) }
        format.xml  { render :xml => @yoga_class, :status => :created, :location => @yoga_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @yoga_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /yoga_classes/1
  # PUT /yoga_classes/1.xml
  def update
    @yoga_class = YogaClass.find(params[:id])

    respond_to do |format|
      if @yoga_class.update_attributes(params[:yoga_class])
        flash[:notice] = 'YogaClass was successfully updated.'
        format.html { redirect_to(@yoga_class) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @yoga_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /yoga_classes/1
  # DELETE /yoga_classes/1.xml
  def destroy
    @yoga_class = YogaClass.find(params[:id])
    @yoga_class.destroy

    respond_to do |format|
      format.html { redirect_to(yoga_classes_url) }
      format.xml  { head :ok }
    end
  end
end
