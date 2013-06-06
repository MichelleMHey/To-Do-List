require "test_helper"

class AddTaskToToDoListTest < ActionDispatch::IntegrationTest

  test "adding a new task" do
    visit '/'
    click_link 'Add Task'
    fill_in "Title", with: "My first task!"
    click_button 'Submit Task'
    assert_include page.body, "Your task has now been created!"
    visit '/tasks'
    assert_include page.body, "My first task!"
  end
end