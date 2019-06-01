require 'test_helper'

class BorrowPoliciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrow_policy = borrow_policies(:one)
  end

  test "should get index" do
    get borrow_policies_url
    assert_response :success
  end

  test "should get new" do
    get new_borrow_policy_url
    assert_response :success
  end

  test "should create borrow_policy" do
    assert_difference('BorrowPolicy.count') do
      post borrow_policies_url, params: { borrow_policy: { duration: @borrow_policy.duration, fine_cents: @borrow_policy.fine_cents, fine_period: @borrow_policy.fine_period, name: @borrow_policy.name } }
    end

    assert_redirected_to borrow_policy_url(BorrowPolicy.last)
  end

  test "should show borrow_policy" do
    get borrow_policy_url(@borrow_policy)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrow_policy_url(@borrow_policy)
    assert_response :success
  end

  test "should update borrow_policy" do
    patch borrow_policy_url(@borrow_policy), params: { borrow_policy: { duration: @borrow_policy.duration, fine_cents: @borrow_policy.fine_cents, fine_period: @borrow_policy.fine_period, name: @borrow_policy.name } }
    assert_redirected_to borrow_policy_url(@borrow_policy)
  end

  test "should destroy borrow_policy" do
    assert_difference('BorrowPolicy.count', -1) do
      delete borrow_policy_url(@borrow_policy)
    end

    assert_redirected_to borrow_policies_url
  end
end
