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
    click_button('Save Article')
    # I just want to test if I click the button, but I get error for 'No route matches'. But that is next text no?
  end
  
  Then("I should be on {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end

  Then("I should not see {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end