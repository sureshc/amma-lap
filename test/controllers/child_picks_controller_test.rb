require 'test_helper'

class ChildPicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child_pick = child_picks(:one)
  end

  test "should get index" do
    get child_picks_url
    assert_response :success
  end

  test "should get new" do
    get new_child_pick_url
    assert_response :success
  end

  test "should create child_pick" do
    assert_difference('ChildPick.count') do
      post child_picks_url, params: { child_pick: { child_id: @child_pick.child_id, picked: @child_pick.picked } }
    end

    assert_redirected_to child_pick_url(ChildPick.last)
  end

  test "should show child_pick" do
    get child_pick_url(@child_pick)
    assert_response :success
  end

  test "should get edit" do
    get edit_child_pick_url(@child_pick)
    assert_response :success
  end

  test "should update child_pick" do
    patch child_pick_url(@child_pick), params: { child_pick: { child_id: @child_pick.child_id, picked: @child_pick.picked } }
    assert_redirected_to child_pick_url(@child_pick)
  end

  test "should destroy child_pick" do
    assert_difference('ChildPick.count', -1) do
      delete child_pick_url(@child_pick)
    end

    assert_redirected_to child_picks_url
  end
end
