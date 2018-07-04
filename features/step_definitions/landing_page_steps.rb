When ('I visit the site') do
    visit root_path
end

Then ('I should see {string}') do |content|
    expect(page).to have_content content
end

Given ("the following articles exists") do |table|
    table.hashes.each do |article|
        Article.create!(article)
    end
end

Given("I visit the {string} page") do |string|
    visit root_path
  end
  
  When("I click {string} link") do |article_link|
    click_link(article_link)
  end
  
  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
  end
  
  When("I click {string} button") do |submit|
    click_button('Create Article')
  end
  
  Then("I should be on {string} page") do |string|
    visit create_article_path
    #I want to check if I go to the new create page with the new article
  end

  Then("I should not see {string} with {string}") do |new_title, new_content|
    expect(page).to have_content new_title, new_content
    #I want to see if the title and content I added in the form is displayed on the new article site
  end