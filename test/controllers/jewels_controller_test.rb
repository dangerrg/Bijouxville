require "test_helper"

class JewelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jewel = jewels(:one)
  end

  test "should get index" do
    get jewels_url
    assert_response :success
  end

  test "should get new" do
    get new_jewel_url
    assert_response :success
  end

  test "should create jewel" do
    assert_difference("Jewel.count") do
      post jewels_url, params: { jewel: { description: @jewel.description, jeweler_id: @jewel.jeweler_id, material: @jewel.material, name: @jewel.name, number_of_stones: @jewel.number_of_stones, price: @jewel.price, type_of_stones: @jewel.type_of_stones } }
    end

    assert_redirected_to jewel_url(Jewel.last)
  end

  test "should show jewel" do
    get jewel_url(@jewel)
    assert_response :success
  end

  test "should get edit" do
    get edit_jewel_url(@jewel)
    assert_response :success
  end

  test "should update jewel" do
    patch jewel_url(@jewel), params: { jewel: { description: @jewel.description, jeweler_id: @jewel.jeweler_id, material: @jewel.material, name: @jewel.name, number_of_stones: @jewel.number_of_stones, price: @jewel.price, type_of_stones: @jewel.type_of_stones } }
    assert_redirected_to jewel_url(@jewel)
  end

  test "should destroy jewel" do
    assert_difference("Jewel.count", -1) do
      delete jewel_url(@jewel)
    end

    assert_redirected_to jewels_url
  end
end
