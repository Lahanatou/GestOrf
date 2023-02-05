# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
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


user1 = User.create!(
        email: "abou1@example.com",
        password:"123456",
        admin: false,
      )
user2 = User.create!(
        email: "abou2@example.com",
        password:"123456",
        admin: false,
            )

user3 = User.create!(
        email: "abou3@example.com",
        password:"123456",
        admin: false,
            )

user4 = User.create!(
        email: "abou4@example.com",
        password:"123456",
        admin: false,
        )

user5 = User.create!(
        email: "abou5@example.com",
        password:"123456",
        admin: false,
            )

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

originalparent5 = Hostparent.create!(
        name: "hostparent5",
        description:"description5",
        phone: "123456",
            )

hostparent4 = Hostparent.create!(
        name: "hostparent2",
        description:"adress2",
        phone: "123456",
            )

hostparent4 = Hostparent.create!(
        name: "originalparent3",
        description:"adress3",
        phone: "123456",
            )


hostparent5 = Hostparent.create!(
        name: "hostparent4",
        description:"adress4",
        phone: "123456",
            )


hostparent4 = Hostparent.create!(
        name: "originalparent4",
        description:"adress4",
        phone: "123456",
            )

hostparent5 = Hostparent.create!(
        name: "hostparent5",
        description:"adress5"",
        phone: "123456",
        )
