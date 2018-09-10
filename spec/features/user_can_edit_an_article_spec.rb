require "rails_helper"

describe "user can edit an article" do
  describe "linked from an edit button" do
    it "edits the information for one article" do
      article = Article.update(title: "New Title", body: "New Body")
      binding.pry
      visit '/articles/'

      click_link 'edit'

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.body)
    end
  end
end
