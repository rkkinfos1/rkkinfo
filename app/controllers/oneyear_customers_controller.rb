class OneyearCustomersController < ApplicationController
  # GET /oneyear_customers
  # GET /oneyear_customers.json
  def index
        @oneyear_customers = OneyearCustomer.search(params[:emp_no])
if !session[:logged_in]
  redirect_to :controller => 'login1', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oneyear_customers }
    end
  end

  # GET /oneyear_customers/1
  # GET /oneyear_customers/1.json
  def show
    @oneyear_customer = OneyearCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oneyear_customer }
    end
  end

  # GET /oneyear_customers/new
  # GET /oneyear_customers/new.json
  def new
    @oneyear_customer = OneyearCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @oneyear_customer }
    end
  end

  # GET /oneyear_customers/1/edit
  def edit
    @oneyear_customer = OneyearCustomer.find(params[:id])
  end

  # POST /oneyear_customers
  # POST /oneyear_customers.json
  def create
    @oneyear_customer = OneyearCustomer.new(params[:oneyear_customer])

    respond_to do |format|
      if @oneyear_customer.save
        format.html { redirect_to @oneyear_customer, notice: 'Oneyear customer was successfully created.' }
        format.json { render json: @oneyear_customer, status: :created, location: @oneyear_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @oneyear_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oneyear_customers/1
  # PUT /oneyear_customers/1.json
  def update
    @oneyear_customer = OneyearCustomer.find(params[:id])

    respond_to do |format|
      if @oneyear_customer.update_attributes(params[:oneyear_customer])
        format.html { redirect_to @oneyear_customer, notice: 'Oneyear customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oneyear_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oneyear_customers/1
  # DELETE /oneyear_customers/1.json
  def destroy
    @oneyear_customer = OneyearCustomer.find(params[:id])
    @oneyear_customer.destroy

    respond_to do |format|
      format.html { redirect_to oneyear_customers_url }
      format.json { head :no_content }
    end
  end
end
