Given("I visit the landing page") do
    visit root_path
end

Given("I click on {string}") do |article_link|
    click_link article_link
end

Given("I fill in the {string} field with {string}") do |field, content|
    fill_in field, with: content
end

Given("I click on {string} button") do |button|
    click_button('Save')
end

Then("I should be on the {string} page") do |article_name|
    article = Article.find_by(title: article_name)
    expect(current_path).to eq article_path(article.id)
end