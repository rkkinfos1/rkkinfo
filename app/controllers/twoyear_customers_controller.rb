class TwoyearCustomersController < ApplicationController
  # GET /twoyear_customers
  # GET /twoyear_customers.json
  def index
        @twoyear_customers = TwoyearCustomer.search(params[:emp_no])
if !session[:logged_in]
  redirect_to :controller => 'login2', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @twoyear_customers }
    end
  end

  # GET /twoyear_customers/1
  # GET /twoyear_customers/1.json
  def show
    @twoyear_customer = TwoyearCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @twoyear_customer }
    end
  end

  # GET /twoyear_customers/new
  # GET /twoyear_customers/new.json
  def new
    @twoyear_customer = TwoyearCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @twoyear_customer }
    end
  end

  # GET /twoyear_customers/1/edit
  def edit
    @twoyear_customer = TwoyearCustomer.find(params[:id])
  end

  # POST /twoyear_customers
  # POST /twoyear_customers.json
  def create
    @twoyear_customer = TwoyearCustomer.new(params[:twoyear_customer])

    respond_to do |format|
      if @twoyear_customer.save
        format.html { redirect_to @twoyear_customer, notice: 'Twoyear customer was successfully created.' }
        format.json { render json: @twoyear_customer, status: :created, location: @twoyear_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @twoyear_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /twoyear_customers/1
  # PUT /twoyear_customers/1.json
  def update
    @twoyear_customer = TwoyearCustomer.find(params[:id])

    respond_to do |format|
      if @twoyear_customer.update_attributes(params[:twoyear_customer])
        format.html { redirect_to action: :index }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @twoyear_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twoyear_customers/1
  # DELETE /twoyear_customers/1.json
  def destroy
    @twoyear_customer = TwoyearCustomer.find(params[:id])
    @twoyear_customer.destroy

    respond_to do |format|
      format.html { redirect_to twoyear_customers_url }
      format.json { head :no_content }
    end
  end
end
