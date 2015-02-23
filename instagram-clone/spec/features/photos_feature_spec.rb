require 'rails_helper'
require 'helpers/photos_helper'

include PhotosHelper

feature 'photos' do

  context 'no photos have been added' do
    scenario 'should display a prompt to add a photo' do
      visit '/photos'
      expect(page).to have_content 'No photos'
      expect(page).to have_content 'Add a photo'
    end
  end
  
  context 'photos have been added' do

    scenario 'display post with name' do
      create_post
      visit '/photos'
      expect(page).to have_content 'Food'
      expect(page).not_to have_content 'No photos'
    end
    scenario 'display post with photo' do
      create_post
      visit '/photos'
      expect(page).to have_css 'img'
      expect(page).not_to have_content 'No photos'
    end
  end
end
