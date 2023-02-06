require 'rails_helper'

RSpec.describe Originalparent, type: :model do
  describe "Enrégistrement d'un parent d'origine" do

    it "La validation marche" do
      originalparent = Originalparent.new(name: 'A', description: 'AB', phone: 12345678)
      expect(originalparent).to be_valid
    end

  end
end
