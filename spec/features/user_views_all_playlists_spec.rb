require 'rails_helper'

RSpec.feature "User can view a list of playlists" do
  scenario "user can navigate to list of playlists" do
    visit('/playlists')
    click_on "New playlist"
    fill_in "playlist[name]", with: "Brittany's Playlist"
    click_on "Create Playlist"
    expect(page).to have_content("Brittany's Playlist")
  end
end
