# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# // flush database
Accountline.destroy_all()
Entity.destroy_all()
Entitytype.destroy_all()
Transtype.destroy_all()
User.destroy_all()



u1 = User.create(id:1, username: "Harry")
u2 = User.create( id:2, usename: 'John')

# byebug
# //make look up Data
# //Entity Type
et1 = Entitytype.create(entity_desc: "bank") #1
et2 = Entitytype.create(entity_desc: "creditcard") #2
et3 = Entitytype.create(entity_desc: "bill") #3
et4 = Entitytype.create(entity_desc: "invest") #4
et5 = Entitytype.create(entity_desc: "heli") #5

# byebug
# // Trans Type
tt1 = Transtype.create(ttype: "debit") #1
tt2 = Transtype.create(ttype: "credit") #2
tt3 = Transtype.create(ttype: "transfer") #3


Entity.create(user_id: 1, entitytype_id: 1, account_desc: "Barclays", sortcode: "209055", accountnumber: "45332611") #1

a1 = Accountline.create(entity_id: 1, transtype_id: 1, date: "13/04/2019",  trans_desc: "Pret Coffee", amount: -2.75, balance: 478.66)
a2 = Accountline.create(entity_id: 1, transtype_id: 2, date: "12/04/2019",  trans_desc: "Interest", amount: 1.06, balance: 481.41)
a3 = Accountline.create(entity_id: 1, transtype_id: 1, date: "13/04/2019",  trans_desc: "Virgin Media", amount: -59.99, balance: 480.35)
a4 = Accountline.create(entity_id: 1, transtype_id: 1, date: "13/04/2019",  trans_desc: "Legal & General", amount: -459.66, balance: 540.34)


e2 = Entity.create(user_id: 1, entitytype_id: 1, account_desc: "Santander", sortcode: "202020", accountnumber: "23937656") #2
a5 = Accountline.create(entity_id: 2, transtype_id: 2, date: "13/04/2019",  trans_desc: "PND Salary", amount: 1233.01, balance: 2828.01)
a6 = Accountline.create(entity_id: 2, transtype_id: 2, date: "12/04/2019",  trans_desc: "Barclays TFR", amount: 600.00, balance: 1595.01)
a7 = Accountline.create(entity_id: 2, transtype_id: 1, date: "12/04/2019",  trans_desc: "Spotify Inc", amount: -4.99, balance: 995.01 )

e3 = Entity.create(user_id: 1, entitytype_id: 1, account_desc: "Halifax Saver", sortcode: "114500", accountnumber: "8926178") #3
a8 = Accountline.create(entity_id: 3, transtype_id: 1, date: "13/04/2019",  trans_desc: "HSBC Credit Card", amount: -678.45, balance: 26456.11)
a10 = Accountline.create(entity_id: 3, transtype_id: 1, date: "12/04/2019",  trans_desc: "Interest", amount: 11.06, balance: 27134.56)

# # cc
e4 = Entity.create(user_id: 1, entitytype_id: et2.id, account_desc: "HSBC Credit Card", accountnumber: "492566113412", duedate: "11/06/2019", recurring: "Cycle") #4
Accountline.create(entity_id: 4, transtype_id: 1, date: "20/04/2019",  trans_desc: "Apple Store", amount: -12.99, balance: 255.54 )
a11 = Accountline.create(entity_id: 4, transtype_id: 1, date: "20/04/2019",  trans_desc: "TFL", amount: -8.00, balance: 242.55 )
a12 = Accountline.create(entity_id: 4, transtype_id: 1, date: "19/04/2019",  trans_desc: "Easy Jet", amount: -234.55, balance: 234.55 )


# # bills
e5 = Entity.create(user_id: 1, entitytype_id: 3, account_desc: "Coffee Club", accountnumber: "34561298", duedate: "02/06/2019", recurring: "Weekly")
e6 = Entity.create(user_id: 1, entitytype_id: 3, account_desc: "TV Licence", accountnumber: "8926178", duedate: "02/06/2019", recurring: "Yearly")
e7 = Entity.create(user_id: 1, entitytype_id: 3, account_desc: "Direct Line Car", accountnumber: "12435889651234", duedate: "26/04/2019", recurring: "Monthly")
e8 = Entity.create(user_id: 1, entitytype_id: 3, account_desc: "Richmond Council Tax", accountnumber: "2245721", duedate: "01/05/2019", recurring: "Monthly")


a13 = Accountline.create(entity_id: 5, transtype_id: 1, amount: -19.22)
a14 = Accountline.create(entity_id: 6, transtype_id: 1, amount: -111.00)
a15 = Accountline.create(entity_id: 7, transtype_id: 1, amount: -68.25)
a16 = Accountline.create(entity_id: 8, transtype_id: 1, amount: -267.45)