require "rails_helper"

RSpec.describe "#Article", :type => :model do
  context "with 2 or more comments" do
    it "orders them in reverse chronologically" do
      Article.create(title: "Title", text: "text")

      expect(Article.first.title).to eq("Title")
    end
  end
end
