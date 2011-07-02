class MailbagsController < ApplicationController
  # GET /mailbags
  # GET /mailbags.xml
  def index
    @mailbags = Mailbag.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mailbags }
    end
  end

  # GET /mailbags/1
  # GET /mailbags/1.xml
  def show
    @mailbag = Mailbag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailbag }
    end
  end

  # GET /mailbags/new
  # GET /mailbags/new.xml
  def new
    @mailbag = Mailbag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mailbag }
    end
  end

  # GET /mailbags/1/edit
  def edit
    @mailbag = Mailbag.find(params[:id])
  end

  # POST /mailbags
  # POST /mailbags.xml
  def create
    @mailbag = Mailbag.new(params[:mailbag])

    respond_to do |format|
      if @mailbag.save
        flash[:notice] = 'Mailbag was successfully created.'
        format.html { redirect_to(@mailbag) }
        format.xml  { render :xml => @mailbag, :status => :created, :location => @mailbag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mailbag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mailbags/1
  # PUT /mailbags/1.xml
  def update
    @mailbag = Mailbag.find(params[:id])

    respond_to do |format|
      if @mailbag.update_attributes(params[:mailbag])
        flash[:notice] = 'Mailbag was successfully updated.'
        format.html { redirect_to(@mailbag) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mailbag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mailbags/1
  # DELETE /mailbags/1.xml
  def destroy
    @mailbag = Mailbag.find(params[:id])
    @mailbag.destroy

    respond_to do |format|
      format.html { redirect_to(mailbags_url) }
      format.xml  { head :ok }
    end
  end
end
