require 'rails_helper'
RSpec.describe do
  context "with valid account and previous order" do
    scenario "Users can view the previous order details" do
      # As an authenticated user
      # When I visit "/orders"
      # Then I should see my past order
      # And I should see a link to view that order
      # And when I click that link
      # Then I should see each item that was order with the quantity and line-item subtotals
      # And I should see links to each item's show page
      # And I should see the current status of the order **(ordered, paid, cancelled, completed)**
      # And I should see the total price for the order
      # And I should see the date/time that the order was submitted
      #
      # If the order was completed or cancelled
      # Then I should see a timestamp when the action took place
    end
  end
end
