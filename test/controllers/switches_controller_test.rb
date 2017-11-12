require 'test_helper'

class SwitchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @switch = switches(:one)
  end

  test "should get index" do
    get switches_url
    assert_response :success
  end

  test "should get new" do
    get new_switch_url
    assert_response :success
  end

  test "should create switch" do
    assert_difference('Switch.count') do
      post switches_url, params: { switch: { p1value: @switch.p1value, p2value: @switch.p2value, p3value: @switch.p3value, p4value: @switch.p4value, pin1: @switch.pin1, pin2: @switch.pin2, pin3: @switch.pin3, pin4: @switch.pin4 } }
    end

    assert_redirected_to switch_url(Switch.last)
  end

  test "should show switch" do
    get switch_url(@switch)
    assert_response :success
  end

  test "should get edit" do
    get edit_switch_url(@switch)
    assert_response :success
  end

  test "should update switch" do
    patch switch_url(@switch), params: { switch: { p1value: @switch.p1value, p2value: @switch.p2value, p3value: @switch.p3value, p4value: @switch.p4value, pin1: @switch.pin1, pin2: @switch.pin2, pin3: @switch.pin3, pin4: @switch.pin4 } }
    assert_redirected_to switch_url(@switch)
  end

  test "should destroy switch" do
    assert_difference('Switch.count', -1) do
      delete switch_url(@switch)
    end

    assert_redirected_to switches_url
  end
end
