require 'rails_helper'

RSpec.describe 'Hostparent management function', type: :system do
  before do
    @admin_user = User.create!( id:1, email: "monadministrateur@gmail.com", password: "madmin1", password_confirmation: 'madmin1', admin: true )
  end

    def admin_user_login
      visit new_user_session_path
      find("#user_email").set('monadministrateur@gmail.com')
      find("#user_password").set('madmin1')
      click_button "Connecté(e)"
    end


  describe "Fonction de publication d'un nouveau parent d'accueil par l'administrateur" do
      before do
        admin_user_login
      end
      it "Le parent d'accueil créé est affiché" do

          visit "/hostparents/new"
        fill_in "hostparent[name]", with: 'Test00'
        fill_in "hostparent[adress]", with: "Test01"
        fill_in "hostparent[phone]", with: "97888888"
          click_button 'Créer un(e) Hostparent'
          click_on 'Back'
       expect(page).to have_content 'Hostparent'
      end
 end

#***************************#  Original parent informations

  describe "Fonction d'affichage détaillé" do
    before do
      admin_user_login
    end
     context "Lorsque l'on passe à la modification du parent d'accueil en affichant l'écran de détails par l'administrateur" do
       it "Possibilité d'éditer le contenu" do

         visit "/hostparents/new"
       fill_in "hostparent[name]", with: 'Test02'
       fill_in "hostparent[adress]", with: "Test03"
       fill_in "hostparent[phone]", with: "97888448"
         click_button 'Créer un(e) Hostparent'
            click_on 'Edit'
            click_on 'Modifier ce(tte) Hostparent'
            click_on 'Back'
        expect(page).to have_content 'Hostparent'
       end
     end
  end

#***************************#

    describe "Fonction de suppression de contenue par l'administrateur" do
      before do
        admin_user_login
      end
       context "Lors de la transition vers l'écran de détails" do
         it "Possibilité de supprimer un contenue" do

           visit "/hostparents/new"
         fill_in "hostparent[name]", with: 'Test02'
         fill_in "hostparent[adress]", with: "Test03"
         fill_in "hostparent[phone]", with: "97888448"
           click_button 'Créer un(e) Hostparent'
              click_on 'Back'
              click_on 'Destroy'
                a = page.driver.browser.switch_to.alert
                a.accept
            expect(page).to have_content 'Hostparent'
         end
       end
    end
end
