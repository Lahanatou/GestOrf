# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# gmail.s:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
user = User.create(
        email: "notreadmin@gmail.com",
        password: "bossadmin123456",
        password_confirmation: "bossadmin123456",
        admin: true
      )

user = User.create(
        email: "notreinvite@gmail.com",
        password: "invite123456",
        password_confirmation: "invite123456")


# user1 = User.create!(
#         email: "abou1@gmail.com",
#         password:"123456",
#         admin: false,
#       )
# user2 = User.create!(
#         email: "abou2@gmail.com",
#         password:"123456",
#         admin: false,
#             )
#
# user3 = User.create!(
#         email: "abou3@gmail..com",
#         password:"123456",
#         admin: false,
#             )
#
# user4 = User.create!(
#         email: "abou4@gmail..com",
#         password:"123456",
#         admin: false,
#         )
#
# user5 = User.create!(
#         email: "abou5@gmail..com",
#         password:"123456",
#         admin: false,
#             )

originalparent1 = Originalparent.create!(
        name: "originalparent1",
        description:"description1",
        phone: "123456",
            )

originalparent2 = Originalparent.create!(
        name: "originalparent2",
        description:"description2",
        phone: "123456",
            )


originalparent3 = Originalparent.create!(
        name: "originalparent3",
        description:"description3",
        phone: "123456",
            )


originalparent4 = Originalparent.create!(
        name: "originalparent4",
        description:"description4",
        phone: "123456",
            )

originalparent5 = Originalparent.create!(
        name: "originalparent5",
        description:"description5",
        phone: "123456",
            )

hostparent1 = Hostparent.create!(
        name: "hostparent1",
        adress:"adress1",
        phone: "123456",
            )

hostparent2 = Hostparent.create!(
        name: "hostparent2",
        adress:"adress2",
        phone: "123456",
            )


hostparent3 = Hostparent.create!(
        name: "hostparent3",
        adress:"adress3",
        phone: "123456",
            )


hostparent4 = Hostparent.create!(
        name: "hostparent4",
        adress:"adress4",
        phone: "123456",
            )

hostparent5 = Hostparent.create!(
        name: "hostparent5",
        adress:"adress5",
        phone: "123456",
        )


orphan1 = Orphan.create!(
        name:"orphan1",
        description:"description1",
        age:"age1",
        image:"image1",
        sex:"sex1",
        originalparent: 'originalparent1',
        hostparent:'hostparent1',
        )

orphan2 = Orphan.create!(
        name:"orphan2",
        description:"description2",
        age:"age2",
        image:"image2",
        sex:"sex2",
        originalparent: 'originalparent2',
        hostparent:'hostparent2',
        )

orphan3 = Orphan.create!(
        name: "orphan3",
        description:"description3",
        age:"age3",
        image:"image3",
        sex:"sex3",
        originalparent: 'originalparent3',
        hostparent:'hostparent3',
        )

orphan4 = Orphan.create!(
        name: "orphan4",
        description:"description4",
        age:"age4",
        image:"image4",
        sex:"sex4",
        originalparent: 'originalparent4',
        hostparent:'hostparent4',
        )

orphan5 = Orphan.create!(
        name: "orphan5",
        description:"description5",
        age:"age5",
        image:"image5",
        sex:"sex5",
        originalparent: 'originalparent5',
        hostparent:'hostparent5',
        )

hostparent = ['hostparent1, hostparent2, hostparent3, hostparent4, hostparent5']
phone = ['123456','123456','123456','123456','123456']
originalparent = ['originalparent1, originalparent2, originalparent3, originalparent4 ,originalparent5']
sex = ['sex1','sex2','sex3','sex4','sex5']
email =['email1@gmail.com','email2@gmail.com','email3@gmail.com','email4@gmail.com','email5@gmail.com']


password =['123456','12345678','000000','13547628','020589143']
image = ["https://previews.123rf.com/images/piovesempre/piovesempre1409/piovesempre140900071/31652517-villa-de-luxe-avec-piscine-%C3%A0-d%C3%A9bordement.jpg",
"https://fotomelia.com/wp-content/uploads/edd/2015/11/banque-d-images-gratuites-libres-de-droits419-1560x1170.jpg",
"https://previews.123rf.com/images/dotshock/dotshock1504/dotshock150400003/38541199-vue-ext%C3%A9rieure-d-une-maison-contemporaine-villa-moderne.jpg",
"https://media.istockphoto.com/photos/modern-minimalist-family-villa-picture-id1180620728?s=612x612",
"https://media.bazarafrique.com/upload/post/6231554ae4ef1308687605.jpg"]


5.times do|i|
  User.create(
          email:email.sample,
          password:password.sample,
        )
end



# 5.times do |i|
#   Orphan.create(
#           name: "orphan#{i + 1}",
#           description:"adress#{i + 1}",
#           age:Faker::Number.number(digits: 6) + 2,
#           image:image.sample,
#           sex:sex.sample,
            # originalparent:originalparent.sample,
            # hostparent:hostparent.sample
#         )
# end
