'require rails_helper'

RSpec.describe "user adjusts contents in cart" do
  it "a user can adjust the number of contents in cart" do
    # As a visitor
    # When I visit "/cart"
    # Then I should see my item with a quantity of 1
    # And when I increase the quantity
    # Then my current page should be '/cart'
    # And that item's quantity should reflect the increase
    # And the subtotal for that item should increase
    # And the total for the cart should match that increase

    item1 = create(:item)
    visit '/menu'
    click_on("Add Item")

    expect(page).to have_content("You now have 1 #{item1.title}.")

    visit '/cart'

    expect(page).to have_content("Cart: 1")
    expect(page).to have_content("Cart Total: $#{item1.price}")
    expect(page).to have_content("Subtotal: $#{item1.price}")

    click_on("Add Item")

    expect(current_path).to eq('/cart')
    expect(page).to have_content("You now have 2 #{item1.title}s.")
    expect(page).to have_content("Cart Total: $#{item1.price*2}")
    expect(page).to have_content("Subtotal: $#{item1.price*2}")
  end
end
