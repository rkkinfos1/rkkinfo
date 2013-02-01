require 'test_helper'

class OneyearCustomersControllerTest < ActionController::TestCase
  setup do
    @oneyear_customer = oneyear_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oneyear_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oneyear_customer" do
    assert_difference('OneyearCustomer.count') do
      post :create, oneyear_customer: { e_mail: @oneyear_customer.e_mail, emp_no: @oneyear_customer.emp_no, name: @oneyear_customer.name, phone: @oneyear_customer.phone }
    end

    assert_redirected_to oneyear_customer_path(assigns(:oneyear_customer))
  end

  test "should show oneyear_customer" do
    get :show, id: @oneyear_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oneyear_customer
    assert_response :success
  end

  test "should update oneyear_customer" do
    put :update, id: @oneyear_customer, oneyear_customer: { e_mail: @oneyear_customer.e_mail, emp_no: @oneyear_customer.emp_no, name: @oneyear_customer.name, phone: @oneyear_customer.phone }
    assert_redirected_to oneyear_customer_path(assigns(:oneyear_customer))
  end

  test "should destroy oneyear_customer" do
    assert_difference('OneyearCustomer.count', -1) do
      delete :destroy, id: @oneyear_customer
    end

    assert_redirected_to oneyear_customers_path
  end
end
