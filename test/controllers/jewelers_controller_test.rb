require "test_helper"

class JewelersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jeweler = jewelers(:one)
  end

  test "should get index" do
    get jewelers_url
    assert_response :success
  end

  test "should get new" do
    get new_jeweler_url
    assert_response :success
  end

  test "should create jeweler" do
    assert_difference("Jeweler.count") do
      post jewelers_url, params: { jeweler: { email: @jeweler.email, name: @jeweler.name } }
    end

    assert_redirected_to jeweler_url(Jeweler.last)
  end

  test "should show jeweler" do
    get jeweler_url(@jeweler)
    assert_response :success
  end

  test "should get edit" do
    get edit_jeweler_url(@jeweler)
    assert_response :success
  end

  test "should update jeweler" do
    patch jeweler_url(@jeweler), params: { jeweler: { email: @jeweler.email, name: @jeweler.name } }
    assert_redirected_to jeweler_url(@jeweler)
  end

  test "should destroy jeweler" do
    assert_difference("Jeweler.count", -1) do
      delete jeweler_url(@jeweler)
    end

    assert_redirected_to jewelers_url
  end
end
