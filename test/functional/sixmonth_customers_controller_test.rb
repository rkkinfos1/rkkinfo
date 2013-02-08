require 'test_helper'

class SixmonthCustomersControllerTest < ActionController::TestCase
  setup do
    @sixmonth_customer = sixmonth_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sixmonth_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sixmonth_customer" do
    assert_difference('SixmonthCustomer.count') do
      post :create, sixmonth_customer: { e_mail: @sixmonth_customer.e_mail, emp_no: @sixmonth_customer.emp_no, feedback: @sixmonth_customer.feedback, issue: @sixmonth_customer.issue, name: @sixmonth_customer.name, phone: @sixmonth_customer.phone, status: @sixmonth_customer.status }
    end

    assert_redirected_to sixmonth_customer_path(assigns(:sixmonth_customer))
  end

  test "should show sixmonth_customer" do
    get :show, id: @sixmonth_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sixmonth_customer
    assert_response :success
  end

  test "should update sixmonth_customer" do
    put :update, id: @sixmonth_customer, sixmonth_customer: { e_mail: @sixmonth_customer.e_mail, emp_no: @sixmonth_customer.emp_no, feedback: @sixmonth_customer.feedback, issue: @sixmonth_customer.issue, name: @sixmonth_customer.name, phone: @sixmonth_customer.phone, status: @sixmonth_customer.status }
    assert_redirected_to sixmonth_customer_path(assigns(:sixmonth_customer))
  end

  test "should destroy sixmonth_customer" do
    assert_difference('SixmonthCustomer.count', -1) do
      delete :destroy, id: @sixmonth_customer
    end

    assert_redirected_to sixmonth_customers_path
  end
end
