# As a user
# Given that artists exist in the database
# When I visit the artists index
# Then I should see each artist's name
# And each name should link to that artist's individual page

RSpec.feature "User can view a list of artists" do
  scenario "user can navigate to list of artists" do
    Artist.create(name: "Carl", image_path: "asdffgh")
    Artist.create(name: "Brittany", image_path: "asdf")
    visit '/artists'
    expect(page).to have_content("All Artists")
    expect(page).to have_content("Brittany")
  end

  scenario "user can edit an existing artist" do
    visit '/artists'
    Artist.create(name: "Carl", image_path: "asdffgh")
    Artist.create(name: "Brittany", image_path: "asdf")
    save_and_open_page
    click_on "New artist"
  end
end
