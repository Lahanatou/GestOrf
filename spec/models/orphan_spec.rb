require 'rails_helper'

RSpec.describe Orphan, type: :model do
  it "La validation ne marche pas" do
    orphan = Orphan.new(user_id:1, name: nil)
    expect(orphan).not_to be_valid
  end

  it "validation ne marche pas si l'identifiant de l'utilisateur est vide" do
    orphan = Orphan.new(user_id: nil , description: 'Le Benin est meilleur')
    expect(orphan).not_to be_valid
  end
  #
  it 'La validation marche Si le nom et la description de la nouriture sont décrits' do

    @user = User.create!(email: "test@gmail.com", password: "password", password_confirmation: 'password')
    @originalparent = Originalparent.create!(name: 'originalparent', description: 'cotonou', phone: '12345678')
    @hostparent = Hostparent.create!(name: 'hostparent', adress: 'cotonou1', phone: '88795543')

    orphan = Orphan.new(name: 'Test1', description: 'Bienvenue', sex: 'M', age: '10', originalparent: @originalparent, hostparent: @hostparent)
    expect(orphan).to be_valid
  end

  it 'La validation est prise en défaut' do
    orphan = Orphan.new(user_id:1, name: 'Test2', description: '')
    expect(orphan).not_to be_valid
  end
end
