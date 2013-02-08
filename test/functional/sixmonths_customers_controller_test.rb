require 'test_helper'

class SixmonthsCustomersControllerTest < ActionController::TestCase
  setup do
    @sixmonths_customer = sixmonths_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sixmonths_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sixmonths_customer" do
    assert_difference('SixmonthsCustomer.count') do
      post :create, sixmonths_customer: { email: @sixmonths_customer.email, emp_no: @sixmonths_customer.emp_no, feedback: @sixmonths_customer.feedback, issue: @sixmonths_customer.issue, name: @sixmonths_customer.name, phone: @sixmonths_customer.phone, status: @sixmonths_customer.status }
    end

    assert_redirected_to sixmonths_customer_path(assigns(:sixmonths_customer))
  end

  test "should show sixmonths_customer" do
    get :show, id: @sixmonths_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sixmonths_customer
    assert_response :success
  end

  test "should update sixmonths_customer" do
    put :update, id: @sixmonths_customer, sixmonths_customer: { email: @sixmonths_customer.email, emp_no: @sixmonths_customer.emp_no, feedback: @sixmonths_customer.feedback, issue: @sixmonths_customer.issue, name: @sixmonths_customer.name, phone: @sixmonths_customer.phone, status: @sixmonths_customer.status }
    assert_redirected_to sixmonths_customer_path(assigns(:sixmonths_customer))
  end

  test "should destroy sixmonths_customer" do
    assert_difference('SixmonthsCustomer.count', -1) do
      delete :destroy, id: @sixmonths_customer
    end

    assert_redirected_to sixmonths_customers_path
  end
end
