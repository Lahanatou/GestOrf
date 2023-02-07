# # gmail.s:
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
            password_confirmation: "invite123456"
          )

        user1 = User.create!(
                email: "abou1@gmail.com",
                password:"123456",
                password_confirmation: "123456",
                admin: false,
              )
            user2 = User.create!(
                    email: "abou2@gmail.com",
                    password:"123456",
                    password_confirmation: "123456",
                    admin: false,
                  )

                user3 = User.create!(
                        email: "abou3@gmail..com",
                        password:"123456",
                        password_confirmation: "123456",
                        admin: false,
                      )

                    user4 = User.create!(
                            email: "abou4@gmail..com",
                            password:"123456",
                            password_confirmation: "123456",
                            admin: false,
                          )

                        user5 = User.create!(
                                email: "abou5@gmail..com",
                                password:"123456",
                                password_confirmation: "123456",
                                admin: false,
                              )

@originalparent = Originalparent.create!(
        name: "originalparent",
        description:"description",
        phone: "123456",
            )

    @originalparent1 = Originalparent.create!(
            name: "originalparent1",
            description:"description1",
            phone: "123456",
                )

        @originalparent2 = Originalparent.create!(
                name: "originalparent2",
                description:"description2",
                phone: "123456",
                    )

            @originalparent3 = Originalparent.create!(
                    name: "originalparent3",
                    description:"description3",
                    phone: "123456",
                        )

                @originalparent4 = Originalparent.create!(
                        name: "originalparent4",
                        description:"description4",
                        phone: "123456",
                            )

                    @originalparent5 = Originalparent.create!(
                            name: "originalparent5",
                            description:"description5",
                            phone: "123456",
                                )

@hostparent = Hostparent.create!(
        name: "hostparent",
        adress:"adress",
        phone: "123456",
            )

    @hostparent1 = Hostparent.create!(
            name: "hostparent1",
            adress:"adress1",
            phone: "123456",
                )

        @hostparent2 = Hostparent.create!(
                name: "hostparent2",
                adress:"adress2",
                phone: "123456",
                    )

            @hostparent3 = Hostparent.create!(
                    name: "hostparent3",
                    adress:"adress3",
                    phone: "123456",
                        )

                @hostparent4 = Hostparent.create!(
                        name: "hostparent4",
                        adress:"adress4",
                        phone: "123456",
                            )

                    @hostparent5 = Hostparent.create!(
                            name: "hostparent5",
                            adress:"adress5",
                            phone: "123456",
                            )

@orphan = Orphan.create!(
        name:"orphan",
        description:"description",
        age:"age",
        image:"image",
        sex:"sexe",
        originalparent: @originalparent,
        hostparent: @hostparent,
        user_id: 2
        )

    @orphan1 = Orphan.create!(
            name:"orphan1",
            description:"description1",
            age:"age1",
            image:"image1",
            sex:"sexe1",
            originalparent: @originalparent1,
            hostparent: @hostparent1,
            user_id: 2
            )

        @orphan2 = Orphan.create!(
                name:"orphan2",
                description:"description2",
                age:"age2",
                image:"image2",
                sex:"sexe2",
                originalparent: @originalparent2,
                hostparent: @hostparent2,
                user_id: 3
                )

            @orphan3 = Orphan.create!(
                    name: "orphan3",
                    description:"description3",
                    age:"age3",
                    image:"image3",
                    sex:"sexe3",
                    originalparent: @originalparent3,
                    hostparent: @hostparent3,
                    user_id: 3
                    )

                @orphan4 = Orphan.create!(
                        name: "orphan4",
                        description:"description4",
                        age:"age4",
                        image:"image4",
                        sex:"sexe4",
                        originalparent: @originalparent4,
                        hostparent: @hostparent4,
                        user_id: 4
                        )

                    @orphan5 = Orphan.create!(
                            name: "orphan5",
                            description:"description5",
                            age:"age5",
                            image:"image5",
                            sex:"sexe5",
                            originalparent: @originalparent5,
                            hostparent: @hostparent5,
                            user_id: 4
                            )

orphan_id = ['1', '2', '3', '4', '5', '6']
