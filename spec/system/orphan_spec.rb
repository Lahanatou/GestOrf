require 'rails_helper'

RSpec.describe 'Orphan management function', type: :system do
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
          click_on 'Créer un(e) Orphan'
          click_on 'Retour'
       expect(page).to have_content 'Orphelin'
      end
 end


  # describe "Fonction d'affichage détaillé" do
  #   before do
  #     admin_user_login
  #   end
  #    context "Lorsque l'on passe à la modification de l'orphelin en affichant l'écran de détails" do
  #      it "Possibilité d'éditer le contenu" do
  #
  #       #     visit '/orphans/new'
  #       #   fill_in "orphan[name]", with: 'Test02'
  #       #   fill_in "orphan[description]", with: "Test03"
  #       #   fill_in "orphan[age]", with: "10"
  #       #   fill_in "orphan[sex]", with: "F"
  #       #   select 'originalparent'
  #       #   select 'hostparent'
  #       #     click_button 'Créer un(e) Orphan'
  #       #     click_on 'Modifier'
  #       #     click_on 'Retour'
  #       # expect(page).to have_content 'Orphelin'
  #
  #       visit '/orphans/14/edit'
  #
  #         fill_in "Name", with: 'Test03'
  #          sleep 5
  #         click_button "Modifier"
  #       expect(page).to have_content 'Test03'
  #
  #      end
  #    end
  # end





#     describe "Fonction de suppression de contenue par l'administrateur" do
#       before do
#         admin_user_login
#       end
#        context "Lors de la transition vers l'écran de détails" do
#          it "Possibilité de supprimer un contenue" do
#
#            visit '/orphans/new'
#          fill_in "orphan[name]", with: 'Test04'
#          fill_in "orphan[description]", with: "Test05"
#          fill_in "orphan[age]", with: "15"
#          fill_in "orphan[sex]", with: "F"
#          select 'originalparent'
#          select 'hostparent'
#            click_button 'Créer un(e) Orphan'
#               click_on 'Retour'
#               click_on 'Supprimer'
#                 a = page.driver.browser.switch_to.alert
#                 a.accept
#             expect(page).to have_content 'Orphelin'
#          end
#        end
#     end
end
