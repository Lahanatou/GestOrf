require 'rails_helper'
RSpec.describe 'User registration / login / logout function', type: :system do
  before do
    @user = User.create!(id:5, email: "notreinvite@gmail.com", password: "invite123456")

    @admin_user = User.create!(id:1, email: "notreadmin@gmail.com", password: "bossadmin123456", admin: true)
  end
  def user_login
    visit new_user_session_path
    find("#user_email").set("notreinvite@gmail.com")
    find("#user_password").set("invite123456")
    find("#user_password_confirmation").set("invite123456")
    click_button "Enregistré(e)"
  end

  def admin_user_login
    visit new_user_session_path
    find("#user_email").set('notreadmin@gmail.com')
    find("#user_password").set('bossadmin123456')
    find("#user_password_confirmation").set("bossadmin123456")
    click_button "Enregistré(e)"
  end
  #*******************************
  describe 'User registration test' do
    context 'No user data and no login' do
      it "Test d'enregistrement d'un nouvel utilisateur" do
        visit new_user_registration_path
      #  click_on "Nouvel enregistrement"
        fill_in 'user[email]', with: "notreinv@gmail.com"
        fill_in 'user[password]', with: "invite123456"
        fill_in 'user[password_confirmation]', with: "invite123456"
        click_on "Enregistré(e)"
        expect(page).to have_content 'Bienvenue ! Vous vous êtes bien enregistré(e).'
      end
     it "Un test qui saute à l'écran de connexion lorsque vous n'êtes pas connecté" do
       visit 'orphans'
       click_on "Connexion"
       expect(current_path).to eq new_user_session_path
     end
     it "ne devrait pas pouvoir accéder à l'écran de gestion" do
      visit new_user_session_path
      fill_in 'user[email]', with: 'user@gmail.com'
      fill_in 'user[password]', with: '00000000'
       click_button 'Connecté(e)'
      visit rails_admin_path
      expect(page).to_not have_content 'List Of Users'
     end
    end
  end

end
