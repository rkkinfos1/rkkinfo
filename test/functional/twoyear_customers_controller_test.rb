require 'test_helper'

class TwoyearCustomersControllerTest < ActionController::TestCase
  setup do
    @twoyear_customer = twoyear_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twoyear_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twoyear_customer" do
    assert_difference('TwoyearCustomer.count') do
      post :create, twoyear_customer: { e_mail: @twoyear_customer.e_mail, emp_no: @twoyear_customer.emp_no, name: @twoyear_customer.name, phone: @twoyear_customer.phone }
    end

    assert_redirected_to twoyear_customer_path(assigns(:twoyear_customer))
  end

  test "should show twoyear_customer" do
    get :show, id: @twoyear_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twoyear_customer
    assert_response :success
  end

  test "should update twoyear_customer" do
    put :update, id: @twoyear_customer, twoyear_customer: { e_mail: @twoyear_customer.e_mail, emp_no: @twoyear_customer.emp_no, name: @twoyear_customer.name, phone: @twoyear_customer.phone }
    assert_redirected_to twoyear_customer_path(assigns(:twoyear_customer))
  end

  test "should destroy twoyear_customer" do
    assert_difference('TwoyearCustomer.count', -1) do
      delete :destroy, id: @twoyear_customer
    end

    assert_redirected_to twoyear_customers_path
  end
end
