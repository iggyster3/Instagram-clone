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
