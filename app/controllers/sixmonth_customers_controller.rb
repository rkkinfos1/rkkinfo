class SixmonthCustomersController < InheritedResources::Base
def index
        @sixmonth_customers = SixmonthCustomer.search(params[:emp_no])
if !session[:logged_in]
  redirect_to :controller => 'login1',
              :action => 'login_page'
  return
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sixmonth_customers }
    end
  end

  # GET /oneyear_customers/1
  # GET /oneyear_customers/1.json
  def show
    @sixmonth_customer = SixmonthCustomer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sixmonth_customer }
    end
  end

  # GET /oneyear_customers/new
  # GET /oneyear_customers/new.json
  def new
    @sixmonth_customer = SixmonthCustomer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sixmonth_customer }
    end
  end

  # GET /oneyear_customers/1/edit
  def edit
    @sixmonth_customer = SixmonthCustomer.find(params[:id])
  end

  # POST /oneyear_customers
  # POST /oneyear_customers.json
  def create
    @sixmonth_customer = SixmonthCustomer.new(params[:sixmonth_customer])

    respond_to do |format|
      if @sixmonth_customer.save
        format.html { redirect_to @sixmonth_customer, notice: 'Six months customer was successfully created.' }
        format.json { render json: @sixmonth_customer, status: :created, location: @sixmonth_customer }
      else
        format.html { render action: "new" }
        format.json { render json: @sixmonth_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oneyear_customers/1
  # PUT /oneyear_customers/1.json
  def update
    @sixmonth_customer = SixmonthCustomer.find(params[:id])

    respond_to do |format|
      if @sixmonth_customer.update_attributes(params[:sixmonth_customer])
        format.html { redirect_to action: :index }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sixmonth_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oneyear_customers/1
  # DELETE /oneyear_customers/1.json
  def destroy
    @sixmonth_customer = SixmonthCustomer.find(params[:id])
    @sixmonth_customer.destroy

    respond_to do |format|
      format.html { redirect_to sixmonth_customers_url }
      format.json { head :no_content }
    end
  end
end