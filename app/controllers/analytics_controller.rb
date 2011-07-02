class AnalyticsController < ApplicationController
  # GET /analytics
  # GET /analytics.xml
  def index
    @analytics = Analytic.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @analytics }
    end
  end

  # GET /analytics/1
  # GET /analytics/1.xml
  def show
    @analytic = Analytic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @analytic }
    end
  end

  # GET /analytics/new
  # GET /analytics/new.xml
  def new
    @analytic = Analytic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @analytic }
    end
  end

  # GET /analytics/1/edit
  def edit
    @analytic = Analytic.find(params[:id])
  end

  # POST /analytics
  # POST /analytics.xml
  def create
    @analytic = Analytic.new(params[:analytic])

    respond_to do |format|
      if @analytic.save
        flash[:notice] = 'Analytic was successfully created.'
        format.html { redirect_to(@analytic) }
        format.xml  { render :xml => @analytic, :status => :created, :location => @analytic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @analytic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /analytics/1
  # PUT /analytics/1.xml
  def update
    @analytic = Analytic.find(params[:id])

    respond_to do |format|
      if @analytic.update_attributes(params[:analytic])
        flash[:notice] = 'Analytic was successfully updated.'
        format.html { redirect_to(@analytic) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @analytic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /analytics/1
  # DELETE /analytics/1.xml
  def destroy
    @analytic = Analytic.find(params[:id])
    @analytic.destroy

    respond_to do |format|
      format.html { redirect_to(analytics_url) }
      format.xml  { head :ok }
    end
  end
end
