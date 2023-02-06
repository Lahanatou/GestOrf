require 'rails_helper'

RSpec.describe 'Oprhan management function', type: :system do
  before do
    @user = User.create!( id:8, email: "invite1@gmail.com", password: "invite12345", password_confirmation: 'invite12345' )
    @admin_user = User.create!( id:1, email: "monadministrateur@gmail.com", password: "madmin1", password_confirmation: 'madmin1', admin: true )
    @originalparent = Originalparent.create!( id:11, name: 'originalparent', description: 'cotonou', phone: '12345678' )
    @hostparent = Hostparent.create!( id:12, name: 'hostparent', adress: 'cotonou1', phone: '88795543' )
  end

    def user_login
      visit new_user_session_path
      find("#user_email").set("invite1@gmail.com")
      find("#user_password").set("invite12345")
      click_button "Connecté(e)"
    end

    def admin_user_login
      visit new_user_session_path
      find("#user_email").set('monadministrateur@gmail.com')
      find("#user_password").set('madmin1')
      click_button "Connecté(e)"
    end


  describe "Fonction de publication d'un nouveau orphelin" do
      before do
        user_login
      end
      it "L'orphelin créé est affiché" do

          visit "/orphans/new"
        fill_in "orphan[name]", with: 'Test00'
        fill_in "orphan[description]", with: "Test01"
        fill_in "orphan[age]", with: "20"
        fill_in "orphan[sex]", with: "M"
        select 'originalparent'
        select 'hostparent'
          click_button 'noveau orphan'

          click_on 'Back'

          click_on 'Show'

       expect(page).to have_content 'Orphan'
      end
 end

#***************************#

  # describe "Fonction d'affichage détaillé" do
  #   before do
  #     user_login
  #   end
  #    context "Lorsque l'on passe à la modification de l'aliment en affichant l'écran de détails" do
  #      it "Possibilité d'éditer le contenu" do
  #
  #           visit '/foods/new'
  #         fill_in "food[name]", with: 'Pate blanche'
  #         fill_in "food[description]", with: "Nouriture locale"
  #         fill_in "food[price]", with: "5000"
  #         select "mon restaurant"
  #           click_button 'Créer un(e) Food'
  #
  #           click_on 'Retourner'
  #
  #           click_on 'Modifier'
  #
  #           click_on 'Retour'
  #
  #       expect(page).to have_content 'Food'
  #      end
  #    end
  # end

#***************************#

    # describe 'Fonction de suppression de contenue' do
    #   before do
    #     user_login
    #   end
    #    context "Lors de la transition vers l'écran de détails de l'aliment" do
    #      it "Possibilité de supprimer un contenue" do
    #
    #           visit '/foods/new'
    #         fill_in "food[name]", with: 'Pate'
    #         fill_in "food[description]", with: "Locale"
    #         fill_in "food[price]", with: "2500"
    #         select "mon restaurant"
    #           click_button 'Créer un(e) Food'
    #
    #           click_on 'Retourner'
    #
    #           click_on "Supprimer"
    #             a = page.driver.browser.switch_to.alert
    #             a.accept
    #         expect(page).to have_content 'Food'
    #      end
    #    end
    # end

#***************************#


  # describe 'Fonction de commentaire de contenue' do
  #   before do
  #     user_login
  #   end
  #    context "Lors de la transition vers l'écran de détails pour commenter l'aliment" do
  #      it "Possibilité de créer un commentaire" do
  #
  #           visit '/foods/new'
  #         fill_in "food[name]", with: 'Pate'
  #         fill_in "food[description]", with: "Locale"
  #         fill_in "food[price]", with: "2500"
  #         select "mon restaurant"
  #           click_button 'Créer un(e) Food'
  #
  #           click_on 'Retourner'
  #
  #           click_on "Afficher"
  #
  #           fill_in "comment[content]", with: 'Pate'
  #
  #           click_on "Créer un(e) Comment"
  #         expect(page).to have_content 'Food'
  #      end
  #    end
  # end

end
