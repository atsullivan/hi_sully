require 'rails_helper'
require_relative "../../../app/controllers/articles_controller/formatted_input"

RSpec.describe FormattedInput do
  let(:text_with_returns) {
    "Aliquam nec ante sit amet eros convallis iaculis non vitae neque. Etiam fringilla, felis a posuere molestie, urna ligula maximus neque, nec hendrerit lectus libero pulvinar eros. Etiam congue faucibus lectus, at laoreet mi pulvinar ac. Phasellus malesuada nec tellus non molestie. Etiam tempor urna velit, quis consectetur nulla bibendum ut. Nulla vestibulum augue eros, blandit auctor ante venenatis at. Praesent nec scelerisque ipsum, eget sollicitudin ligula. Quisque non lectus diam. Nam lobortis magna sed nulla finibus placerat. Etiam auctor ligula lacus, eget aliquet tortor faucibus id.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent rhoncus, quam a sodales lobortis, dui elit accumsan ipsum, eu laoreet massa mauris id orci. Suspendisse potenti. Etiam feugiat semper pharetra. Vivamus rhoncus ipsum arcu, id tempor mauris fermentum ac. Morbi sed varius velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc a molestie lectus. Suspendisse arcu tellus, interdum sit amet metus a, consequat lobortis nibh. Etiam sed felis pellentesque, feugiat est eu, tempor lectus. Cras nulla dui, pulvinar sed nulla a, imperdiet tempus erat. Aenean ullamcorper turpis quis maximus posuere. Ut eu tellus sollicitudin, mattis nunc vitae, efficitur enim. Nulla cursus dui vitae lorem maximus, quis accumsan arcu ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam libero justo, hendrerit vitae sem id, malesuada consequat ante. "
  }
  let(:valid_text) {
    "Aliquam nec ante sit amet eros convallis iaculis non vitae neque. Etiam fringilla, felis a posuere molestie, urna ligula maximus neque, nec hendrerit lectus libero pulvinar eros. Etiam congue faucibus lectus, at laoreet mi pulvinar ac. Phasellus malesuada nec tellus non molestie. Etiam tempor urna velit, quis consectetur nulla bibendum ut. Nulla vestibulum augue eros, blandit auctor ante venenatis at. Praesent nec scelerisque ipsum, eget sollicitudin ligula. Quisque non lectus diam. Nam lobortis magna sed nulla finibus placerat. Etiam auctor ligula lacus, eget aliquet tortor faucibus id. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent rhoncus, quam a sodales lobortis, dui elit accumsan ipsum, eu laoreet massa mauris id orci. Suspendisse potenti. Etiam feugiat semper pharetra. Vivamus rhoncus ipsum arcu, id tempor mauris fermentum ac. Morbi sed varius velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc a molestie lectus. Suspendisse arcu tellus, interdum sit amet metus a, consequat lobortis nibh. Etiam sed felis pellentesque, feugiat est eu, tempor lectus. Cras nulla dui, pulvinar sed nulla a, imperdiet tempus erat. Aenean ullamcorper turpis quis maximus posuere. Ut eu tellus sollicitudin, mattis nunc vitae, efficitur enim. Nulla cursus dui vitae lorem maximus, quis accumsan arcu ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam libero justo, hendrerit vitae sem id, malesuada consequat ante."
  }
  let(:title_with_white_space) {
    "Title
    "
  }
  let(:valid_title) { "Title" }

  describe '#text' do
    context 'when an article text has returns and trailing whitespace' do
      it 'returns an array of formatted paragraphs' do
        formatted_input = FormattedInput.new(text_with_returns, anything)
        formatted_text = formatted_input.text

        expect(formatted_text.size).to eq(2)
        expect(formatted_text[-1]).not_to eq(" ")
      end
    end

    context 'when an article text is valid' do
      it 'returns the text in an array' do
        formatted_input = FormattedInput.new(valid_text, anything)
        formatted_text = formatted_input.text

        expect(formatted_text).to eq([valid_text])
      end
    end
  end

  describe '#title' do
    context 'when an article title has returns and whitespace' do
      it 'returns a formatted title' do
        formatted_input = FormattedInput.new(anything, title_with_white_space)
        formatted_title = formatted_input.title

        expect(formatted_title).to eq(valid_title)
      end
    end

    context 'when an article title is valid' do
      it 'returns the same title' do
        formatted_input = FormattedInput.new(anything, valid_title)
        formatted_title = formatted_input.title

        expect(formatted_title).to eq(valid_title)
      end
    end
  end
end
