# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Report.destroy_all
Fact.destroy_all
Update.destroy_all
Help.destroy_all
Barter.destroy_all
QuarantineCentre.destroy_all

User.create(first_name: 'Chinomnso', last_name: 'Awazie', username: 'nonsoadmin', email: 'coawazie@gmail.com', city: 'Owerri', lga: 'Owerri North', password_digest:  BCrypt::Password.create("password"), phone_no: 77777777777, country: 'Nigeria', state: 'Imo', admin: true)


Report.create(user_id: 1, country: 'Nigeria', state: 'Lagos', city_town_or_village: 'Nyanya', city: 'Ajegunle', lga: 'owerri', nearest_landmark:  'Ajegunle Hospital', persons_involved: 'Olatunde Ajayi', description: 'He is coughing hard and running high tempratures', lat: 6.44183, lng: 3.36899, medical_attention_observed: true, medical_attention_description: 'Given first aid', can_we_follow_up: true, verified: true, file: 'dfdsfdf')
Report.create(user_id: 1, country: 'Nigeria', state: 'Abuja', city_town_or_village: 'Nyanya', city: 'Wuse', lga: 'owerri', nearest_landmark: 'National Hospital', persons_involved: 'Musa Ajayi', description: 'He is refusing to eat suya and running high tempratures', lat: 9.08603, lng: 7.48114, medical_attention_observed: true, medical_attention_description: 'Injected with injections', can_we_follow_up: true, verified: true)
Report.create(user_id: 1, country: 'Nigeria', state: 'Lagos', city_town_or_village: 'Nyanya', city: 'Ajegunle', lga: 'owerri', nearest_landmark: 'Lagos House of Assembly', persons_involved: 'Kola Oladapo', description: 'Tempratures running high', lat: 6.44383, lng: 3.36869, medical_attention_observed: false, medical_attention_description: 'Food was administered', can_we_follow_up: true, verified: false)
Report.create(user_id: 1, country: 'Nigeria', state: 'Abuja', city_town_or_village: 'Nyanya', city: 'Maraba', lga: 'owerri', nearest_landmark: 'Wuse Hospital', persons_involved: 'Bello Yahaya', description: 'Difficulty in breathing', lat: 9.08203, lng: 7.48214, medical_attention_observed: true, medical_attention_description: 'None observed', can_we_follow_up: false, verified: true)

Fact.create(title: 'Are we all gonna die?', description: 'They have said we all gone die', organization: 'WHO', source: 'WHO', link: 'www.who.org', category: 'rumor', date_published: '08/09/2020')
Fact.create(title: 'Are we all stupid?', description: 'They have said we all stupd and it seems so', organization: 'CDC', source: 'CDC', link: 'www.cdc.gov', category: 'symptoms', date_published: '04/24/2020')
Fact.create(title: 'What the hell?', description: 'Captian, no sign of intelligent life found', organization: 'WHO', source: 'WHO', link: 'www.who.org', category: 'transmission', date_published: '08/09/2020')

Update.create(description: 'Covid-19 is now in Tanzania', organization: 'TDC', country: 'Tanzania', source_or_link: 'www.tanzania.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Ghana', organization: 'GDC', country: 'Ghana', source_or_link: 'www.ghana.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Uganda', organization: 'UDC', country: 'Uganda', source_or_link: 'www.tanzania.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Nigeria', organization: 'TDC', country: 'Nigeria', source_or_link: 'www.tanzania.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Mogbeo ', organization: 'TDC', country: 'Nigeris', source_or_link: 'www.tanzania.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Kanudna', organization: 'TDC', country: 'Nigeris', source_or_link: 'www.tanzania.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Ashanti', organization: 'TDC', country: 'Ghana', source_or_link: 'www.tanzania.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Acra', organization: 'TDC', country: 'Ghana', source_or_link: 'www.tanzania.gov', date: '04/23/2020')
Update.create(description: 'Covid-19 is now in Ibeku', organization: 'TDC', country: 'Nigeria', source_or_link: 'www.tanzania.gov', date: '04/23/2020')


Help.create(requestor_id: 1, description: 'need bread', date_requested: '03/04/2020', location: "Owerri", date_required: "04/05/2020", helper_id: 2, status: false)
Help.create(requestor_id: 2, description: 'need milk', date_requested: '04/04/2020', location: "Emekuku", date_required: "04/10/2020", helper_id: 1, status: false)

Barter.create(requestor_id: 1, item_description: 'yam', quantity: 'Two tubers', category: 'food', done: false)
Barter.create(requestor_id: 2, item_description: 'shirt', quantity: '4', category: 'clothes', done: true, receiver_id: 1, date_done: '04/05/2020', verified: true, verified_by: 'Funke', comments: 'well fitting shirt')
QuarantineCentre.create(user_id: 1, name: 'Warri centre', country: 'Nigeria', state: 'Delta', city: 'Warri', lga: 'Warri North', city_town_or_village: 'Ugborikoko', nearest_landmark: 'Protea Hotel', lat: 5.554478, lng: 5.793288, phone: 71088, email: 'awazie@gmail.com', verified: true, verified_by: 'Ezeagwula', verification_notes: 'Not verified by ogbonge')




puts '<<<<<<<<<<<<<<<<===============>>>>>>>>>>>>>>'
puts '            SEEDED                           '
puts '<<<<<<<<<<<<<<<==================>>>>>>>>>>>>'