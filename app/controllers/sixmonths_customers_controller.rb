class SixmonthsCustomersController < InheritedResources::Base
def index
        @sixmonths_customers = SixmonthsCustomer.search(params[:emp_no])
if !session[:logged_in]
  redirect_to :controller => 'login1', 
              :action => 'login_page' 
  return
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sixmonths_customers }
    end
  end

  # GET /oneyear_customers/1
  # GET /oneyear_customers/1.json
  def show
    @sixmonths_customer = SixmonthsCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sixmonths_customer }
    end
  end

  # GET /oneyear_customers/new
  # GET /oneyear_customers/new.json
  def new
    @sixmonths_customer = SixmonthsCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sixmonths_customer }
    end
  end

  # GET /oneyear_customers/1/edit
  def edit
    @sixmonths_customer = SixmonthsCustomer.find(params[:id])
  end

  # POST /oneyear_customers
  # POST /oneyear_customers.json
  def create
    @sixmonths_customer = SixmonthsCustomer.new(params[:sixmonths_customer])

    respond_to do |format|
      if @sixmonths_customer.save
        format.html { redirect_to @sixmonths_customer, notice: 'Six months customer was successfully created.' }
        format.json { render json: @sixmonths_customer, status: :created, location: @sixmonths_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @sixmonths_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oneyear_customers/1
  # PUT /oneyear_customers/1.json
  def update
    @sixmonths_customer = SixmonthsCustomer.find(params[:id])

    respond_to do |format|
      if @sixmonths_customer.update_attributes(params[:sixmonths_customer])
        format.html { redirect_to @sixmonths_customer, notice: 'Six Months customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sixmonths_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oneyear_customers/1
  # DELETE /oneyear_customers/1.json
  def destroy
    @sixmonths_customer = SixmonthsCustomer.find(params[:id])
    @sixmonths_customer.destroy

    respond_to do |format|
      format.html { redirect_to sixmonths_customers_url }
      format.json { head :no_content }
    end
  end
end
