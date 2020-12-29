require 'rails_helper'

describe 'user can search for members by nation' do
  it 'should display the Fire Nation members and data' do
    visit root_path

    select 'Fire Nation', from: :nation

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content('There are 97 members in the Fire Nation')

    expect(page).to have_css('.member', count: 97)

    within(first('.member')) do
      within('.name') do
        expect(page).to have_content('Chan (Fire Nation admiral)')
      end
      within('.photo') do
        expect(page).to have_css("img[src*='']")
      end
      within('.allies') do
        expect(page).to have_content('Ozai')
      end
      within('.enemies') do
        expect(page).to have_content('Earth Kingdom')
      end
      within('.affiliation') do
        expect(page).to have_content('Fire Nation')
      end
    end
  end
end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click 'Search For Members'
# Then I should be on page '/search'
# Then I should see the total number of people who live in the Fire Nation. (i.e. there are 97 total)
# And I should see a list with the detailed information for all 97 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies (if they have any)
# - Any affiliation that the member has (if they have any)
