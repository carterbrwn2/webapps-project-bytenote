require 'rails_helper'

RSpec.describe Note, type: :model do
  user = User.new(email: 'user@domain.com', password: 'password')
  notebook = Notebook.new(name: 'Notebook Name', user: user)
  note = Note.new(title: 'Some title', content: 'Some content', notebook: notebook)

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(note).to be_valid
    end

    it "is not valid without a title" do
      note.title = nil
      expect(note).to_not be_valid
    end

    it "is not valid with a blank title" do
      note.title = '    '
      expect(note).to_not be_valid
    end

    it "is valid without content" do
      note.content = nil
      expect(note).to_not be_valid
    end

    it "is not valid with a title that is too long" do
      note.title = "a"*51
      expect(note).to_not be_valid
    end

    it "is not valid with a duplicate title" do
      duplicate_note = note.dup
      duplicate_note.title = note.title.upcase
      note.save
      expect(note).to_not be_valid
    end
  end
end
