require 'rails_helper'

RSpec.describe Hostparent, type: :model do
  describe "Enrégistrement d'un parent d'accueil" do

    it "La validation marche" do
      hostparent = Hostparent.new(name: 'A', adress: 'AB', phone: 12345678)
      expect(hostparent).to be_valid
    end

  end
end
