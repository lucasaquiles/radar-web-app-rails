require 'test_helper'

class RelevancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relevance = relevances(:one)
  end

  test "should get index" do
    get relevances_url
    assert_response :success
  end

  test "should get new" do
    get new_relevance_url
    assert_response :success
  end

  test "should create relevance" do
    assert_difference('Relevance.count') do
      post relevances_url, params: { relevance: { description: @relevance.description } }
    end

    assert_redirected_to relevance_url(Relevance.last)
  end

  test "should show relevance" do
    get relevance_url(@relevance)
    assert_response :success
  end

  test "should get edit" do
    get edit_relevance_url(@relevance)
    assert_response :success
  end

  test "should update relevance" do
    patch relevance_url(@relevance), params: { relevance: { description: @relevance.description } }
    assert_redirected_to relevance_url(@relevance)
  end

  test "should destroy relevance" do
    assert_difference('Relevance.count', -1) do
      delete relevance_url(@relevance)
    end

    assert_redirected_to relevances_url
  end
end
