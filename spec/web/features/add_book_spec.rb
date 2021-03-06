require 'features_helper'

describe 'Books' do
  # Spec written sooner removed from brevity

  it 'displays list of errors when params contains errors' do
    visit '/books/new'

    within 'form#book-form' do
      click_button 'Create'
    end

    current_path.must_equal('/books')

    assert page.has_content?('There was a problem with your submission')
    assert page.has_content?('title is required')
    assert page.has_content?('author is required')
  end
end
