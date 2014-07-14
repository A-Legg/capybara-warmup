require 'spec_helper'

feature "HomePage" do

  scenario "user visits homepage" do
    visit "/"
    expect(page).to have_content("RSVP App")
  end

  scenario "user clicks rsvp link" do
    visit "/"
    click_link "RSVP"
    expect(page).to have_content("RSVP App New RSVP")
  end

  scenario "user fills in the RSVP form" do
    visit "/"
    click_link "RSVP"
    fill_in 'Name', with: 'Adam Legg'

  end

  scenario "user submits form and sees 'Thanks for the RSVPing!'" do
    visit "/"
    click_link "RSVP"
    click_button "RSVP"
    expect(page).to have_content("Thanks for the RSVPing!")
  end

end