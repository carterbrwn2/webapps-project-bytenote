# Test cases created by: Carter Brown
# Formatted to Rspec by: Ally Chitwood

require 'rails_helper'

RSpec.describe Notebook, type: :model do
  user = User.new(email: 'user@domain.com', password: 'password')
  notebook = Notebook.new(name: 'Notebook Name', user: user)

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(notebook).to be_valid
    end

    it "is not valid without a name" do
      notebook.name = nil
      expect(notebook).to_not be_valid
    end

    it "is not valid with a blank name" do
      notebook.name = '     '
      expect(notebook).to_not be_valid
    end

    it "is not valid with a name that is too long" do
      notebook.name = "a"*51
      expect(notebook).to_not be_valid
    end

    it "is valid with valid names" do
      valid_names = %w[validname myNoTeBoOk asdfiuhasdgjhr12345 my-notes__]
      valid_names.each do |valid_name|
        notebook.name = valid_name
        expect(notebook).to be_valid, "#{valid_name.inspect} should be valid"
      end
    end

    it "is not valid with invalid names" do
      invalid_names = %w[%name !name @name #name $name ^name &name n.m *name]
      invalid_names.each do |invalid_name|
        notebook.name = invalid_name
        expect(notebook).to_not be_valid, "#{invalid_name.inspect} should be invalid"
      end
    end

    it "is not valid with a duplicate name" do
      duplicate_notebook = notebook.dup
      duplicate_notebook.name = notebook.name.upcase
      notebook.save
      expect(notebook).to_not be_valid
    end
  end
end
