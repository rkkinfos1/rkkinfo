class InstantCustomersController < ApplicationController
  # GET /instant_customers
  # GET /instant_customers.json
  def index
        @instant_customers = InstantCustomer.search(params[:emp_no])
        if !session[:logged_in]
  redirect_to :controller => 'login', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instant_customers }
    end
  end

  # GET /instant_customers/1
  # GET /instant_customers/1.json
  def show
    @instant_customer = InstantCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instant_customer }
    end
  end

  # GET /instant_customers/new
  # GET /instant_customers/new.json
  def new
    @instant_customer = InstantCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instant_customer }
    end
  end

  # GET /instant_customers/1/edit
  def edit
    @instant_customer = InstantCustomer.find(params[:id])
  end

  # POST /instant_customers
  # POST /instant_customers.json
  def create
    @instant_customer = InstantCustomer.new(params[:instant_customer])

    respond_to do |format|
      if @instant_customer.save
        format.html { redirect_to @instant_customer, notice: 'Instant customer was successfully created.' }
        format.json { render json: @instant_customer, status: :created, location: @instant_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @instant_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instant_customers/1
  # PUT /instant_customers/1.json
  def update
    @instant_customer = InstantCustomer.find(params[:id])

    respond_to do |format|
      if @instant_customer.update_attributes(params[:instant_customer])
        format.html { redirect_to action: :index}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instant_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instant_customers/1
  # DELETE /instant_customers/1.json
  def destroy
    @instant_customer = InstantCustomer.find(params[:id])
    @instant_customer.destroy

    respond_to do |format|
      format.html { redirect_to instant_customers_url }
      format.json { head :no_content }
    end
  end
end
