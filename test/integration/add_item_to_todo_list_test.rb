require "test_helper"

class AddItemToToDoListTest < ActionDispatch::IntegrationTest
  test  "view a list of items" do
    Item.create!(title: "First Item")
    Item.create!(title: "Second Item")

    assert_equal 2, Item.count
    visit '/items'
    assert_include page.title, "All List Items"
    assert_include page.title, "First Item"
    assert_include page.title, "Second Item"
  end
end