require 'rails_helper'

RSpec.describe 'Originalparent management function', type: :system do
  before do
    @admin_user = User.create!( id:1, email: "monadministrateur@gmail.com", password: "madmin1", password_confirmation: 'madmin1', admin: true )
    @originalparent = Originalparent.create!( id:11, name: 'originalparent', description: 'cotonou', phone: '12345678' )
    #@hostparent = Hostparent.create!( id:12, name: 'hostparent', adress: 'cotonou1', phone: '88795543' )
  end

    def admin_user_login
      visit new_user_session_path
      find("#user_email").set('monadministrateur@gmail.com')
      find("#user_password").set('madmin1')
      click_button "Connecté(e)"
    end


  describe "Fonction de publication d'un parent d'origine par l'administrateur" do
      before do
        admin_user_login
      end
      it "Le parent d'origne créé est affiché" do

          visit "/originalparents/new"
        fill_in "originalparent[name]", with: 'Test00'
        fill_in "originalparent[description]", with: "Test01"
        fill_in "originalparent[phone]", with: "97888888"
          click_button 'Créer un(e) Originalparent'
          visit originalparents_path
       expect(page).to have_content 'Test00'
      end
 end

#*********#  Original parent informations

  describe "Fonction d'affichage détaillé" do
    before do
      admin_user_login
    end
     context "Lorsque l'on passe à la modification du parent d'origine en affichant l'écran de détails par l'administrateur" do
       it "Possibilité d'éditer le contenu" do

            visit '/originalparents/new'
          fill_in "originalparent[name]", with: 'Test02'
          fill_in "originalparent[description]", with: "Test03"
          fill_in "originalparent[phone]", with: "97888889"
            click_button 'Créer un(e) Originalparent'
            click_on 'Modifier'
            click_on 'Modifier ce(tte) Originalparent'
            click_on 'Retour'
        expect(page).to have_content "Parents d'origine"
        # visit '/originalparents/11/edit'
        #   fill_in "Name", with: 'Test03'
        #   click_button "Créer nouveau parent d'origine"
        # expect(page).to have_content 'Test03'
       end
     end
  end

#*********#

    describe "Fonction de suppression de contenue par l'administrateur" do
      before do
        admin_user_login
      end
       context "Lors de la transition vers l'écran de détails" do
         it "Possibilité de supprimer un contenue" do



            visit originalparents_path
         #    fill_in "Name", with: 'Test03'
         #    click_button "Créer nouveau parent d'origine"
         #    expect(page).to have_content 'Test03'
         #
         #
         #   visit '/originalparents/new'
         # fill_in "originalparent[name]", with: 'Test04'
         # fill_in "originalparent[description]", with: "Test05"
         # fill_in "originalparent[phone]", with: "97885889"
         #   click_button 'Créer un(e) Originalparent'
         #      click_on 'Retour'
              click_on 'Supprimer'
                a = page.driver.browser.switch_to.alert
                a.accept
            expect(page).to have_content "Parents d'origine"
         end
       end
    end
end
