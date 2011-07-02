class QuaysController < ApplicationController
  # GET /quays
  # GET /quays.xml
  def index
    @quays = Quay.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quays }
    end
  end

  # GET /quays/1
  # GET /quays/1.xml
  def show
    @quay = Quay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quay }
    end
  end

  # GET /quays/new
  # GET /quays/new.xml
  def new
    @quay = Quay.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quay }
    end
  end

  # GET /quays/1/edit
  def edit
    @quay = Quay.find(params[:id])
  end

  # POST /quays
  # POST /quays.xml
  def create
    @quay = Quay.new(params[:quay])

    respond_to do |format|
      if @quay.save
        flash[:notice] = 'Quay was successfully created.'
        format.html { redirect_to(@quay) }
        format.xml  { render :xml => @quay, :status => :created, :location => @quay }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quay.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quays/1
  # PUT /quays/1.xml
  def update
    @quay = Quay.find(params[:id])

    respond_to do |format|
      if @quay.update_attributes(params[:quay])
        flash[:notice] = 'Quay was successfully updated.'
        format.html { redirect_to(@quay) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quay.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quays/1
  # DELETE /quays/1.xml
  def destroy
    @quay = Quay.find(params[:id])
    @quay.destroy

    respond_to do |format|
      format.html { redirect_to(quays_url) }
      format.xml  { head :ok }
    end
  end
end
