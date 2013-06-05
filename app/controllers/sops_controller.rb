class SopsController < ApplicationController
  # GET /sops
  # GET /sops.json
  def index
    @sops = Sop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sops }
    end
  end

  # GET /sops/1
  # GET /sops/1.json
  def show
    @sop = Sop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sop }
    end
  end

  # GET /sops/new
  # GET /sops/new.json
  def new
    @sop = Sop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sop }
    end
  end

  # GET /sops/1/edit
  def edit
    @sop = Sop.find(params[:id])
  end

  # POST /sops
  # POST /sops.json
  def create
    @sop = Sop.new(params[:sop])

    respond_to do |format|
      if @sop.save
        format.html { redirect_to @sop, notice: 'Sop was successfully created.' }
        format.json { render json: @sop, status: :created, location: @sop }
      else
        format.html { render action: "new" }
        format.json { render json: @sop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sops/1
  # PUT /sops/1.json
  def update
    @sop = Sop.find(params[:id])

    respond_to do |format|
      if @sop.update_attributes(params[:sop])
        format.html { redirect_to @sop, notice: 'Sop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sops/1
  # DELETE /sops/1.json
  def destroy
    @sop = Sop.find(params[:id])
    @sop.destroy

    respond_to do |format|
      format.html { redirect_to sops_url }
      format.json { head :no_content }
    end
  end
end
