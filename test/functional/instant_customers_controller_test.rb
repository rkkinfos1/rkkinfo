require 'test_helper'

class InstantCustomersControllerTest < ActionController::TestCase
  setup do
    @instant_customer = instant_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instant_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instant_customer" do
    assert_difference('InstantCustomer.count') do
      post :create, instant_customer: { e_mail: @instant_customer.e_mail, emp_no: @instant_customer.emp_no, name: @instant_customer.name, phone: @instant_customer.phone }
    end

    assert_redirected_to instant_customer_path(assigns(:instant_customer))
  end

  test "should show instant_customer" do
    get :show, id: @instant_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instant_customer
    assert_response :success
  end

  test "should update instant_customer" do
    put :update, id: @instant_customer, instant_customer: { e_mail: @instant_customer.e_mail, emp_no: @instant_customer.emp_no, name: @instant_customer.name, phone: @instant_customer.phone }
    assert_redirected_to instant_customer_path(assigns(:instant_customer))
  end

  test "should destroy instant_customer" do
    assert_difference('InstantCustomer.count', -1) do
      delete :destroy, id: @instant_customer
    end

    assert_redirected_to instant_customers_path
  end
end
