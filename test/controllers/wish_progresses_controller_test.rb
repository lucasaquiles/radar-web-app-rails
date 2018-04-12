require 'test_helper'

class WishProgressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wish_progress = wish_progresses(:one)
  end

  test "should get index" do
    get wish_progresses_url
    assert_response :success
  end

  test "should get new" do
    get new_wish_progress_url
    assert_response :success
  end

  test "should create wish_progress" do
    assert_difference('WishProgress.count') do
      post wish_progresses_url, params: { wish_progress: { dataRegistro: @wish_progress.dataRegistro, description: @wish_progress.description } }
    end

    assert_redirected_to wish_progress_url(WishProgress.last)
  end

  test "should show wish_progress" do
    get wish_progress_url(@wish_progress)
    assert_response :success
  end

  test "should get edit" do
    get edit_wish_progress_url(@wish_progress)
    assert_response :success
  end

  test "should update wish_progress" do
    patch wish_progress_url(@wish_progress), params: { wish_progress: { dataRegistro: @wish_progress.dataRegistro, description: @wish_progress.description } }
    assert_redirected_to wish_progress_url(@wish_progress)
  end

  test "should destroy wish_progress" do
    assert_difference('WishProgress.count', -1) do
      delete wish_progress_url(@wish_progress)
    end

    assert_redirected_to wish_progresses_url
  end
end
