import Foundation

var contact : Contact = Contact()

contact.ajouteContact(user: "michel", password: "bonjour123")

print(contact.sonCarnet["michel"])

contact.crypter()

print(contact.sonCarnet["michel"])

