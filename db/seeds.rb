# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Wishlist.destroy_all
Offer.destroy_all
Company.destroy_all
User.destroy_all


puts "Creating companies..."
company1 = Company.create!(name: "OVH", city: "Roubaix", address: "2 Rue Kellermann", eco_scoring: 56,
                           social_scoring: 66, environmental_scoring: 76, logo_url:"https://pic.clubic.com/v1/images/1840482/raw?fit=smartCrop&width=450&height=550&hash=b9b4a3683706baa422444d2f9604993df2e3f7aa")
company2 = Company.create!(name: "Le Wagon", city: "Lille", address: "2 Av. des Saules", eco_scoring: 76,
                           social_scoring: 78, environmental_scoring: 88, logo_url: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png")
company3 = Company.create!(name: "Leroy Merlin", city: "Lezennes", address: "Rue Chanzy", eco_scoring: 55,
                           social_scoring: 69, environmental_scoring: 64, logo_url: "https://i0.wp.com/m2-scpn.fr/wp-content/uploads/2016/12/leroy-merlin-logo.png?resize=2000%2C1200&ssl=1")
company4 = Company.create!(name: "Decathlon", city: "Villeneuve-d'Ascq", address: "121 Bd de Valmy", eco_scoring: 90,
                           social_scoring: 76, environmental_scoring: 88, logo_url: "data:image/jpeg;base64,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")
company5 = Company.create!(name: "M6 Web", city: "La Madeleine", address: "125 Av de la République ", eco_scoring: 77,
                           social_scoring: 83, environmental_scoring: 49, logo_url: "data:image/jpeg;base64,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")


p company1
p company2
p company3
p company4
p company5
puts "Companies creation finished!"

puts "Creating offers..."
offer1 = Offer.new(name: "Community Manager", description: "Sous la responsabilité du Directeur Marketing, vous
                       serez en charge de l'animation des réseaux sociaux et du pilotage des campagnes de
                       sponsorisation, au service de la valorisation des contenus et des comptes de nos clients.
                       Compétences requises :
                       * Créativité et excellente maîtrise de la rédaction appliquée au community management : recherche
                       d'angles créatifs, création d'accroches, rédaction de publications originales, décalées et
                       engageantes ;
                       * Excellente maîtrise des codes des réseaux sociaux, de leur animation et de l'environnement
                       social-médias et tout particulièrement des réseaux suivants : Facebook, Twitter, Instagram,
                       LinkedIn ;
                       * Capacité à définir et animer une stratégie digitale ;
                       * Expérience en gestion de campagnes emarketing - la maîtrise du Business Manager Facebook est
                       indispensable", income: 30_000, contract: "CDD")
offer2 = Offer.new(name: "Community Manager", description: "Sous la responsabilité du Directeur Marketing, vous
                       serez en charge de l'animation des réseaux sociaux et du pilotage des campagnes de
                       sponsorisation, au service de la valorisation des contenus et des comptes de nos clients.
                       Compétences requises :
                       * Créativité et excellente maîtrise de la rédaction appliquée au community management : recherche
                       d'angles créatifs, création d'accroches, rédaction de publications originales, décalées et
                       engageantes ;
                       * Excellente maîtrise des codes des réseaux sociaux, de leur animation et de l'environnement
                       social-médias et tout particulièrement des réseaux suivants : Facebook, Twitter, Instagram,
                       LinkedIn ;
                       * Capacité à définir et animer une stratégie digitale ;
                       * Expérience en gestion de campagnes emarketing - la maîtrise du Business Manager Facebook est
                       indispensable", income: 32_000, contract: "CDI")
offer3 = Offer.new(name: "Développeur Full Stack Ruby", description: "Dans le cadre d'un accroissement d'activité,
                       vous rejoignez une équipe de 4-5 Développeurs (tous niveaux), pour travailler ensemble sur la
                       conception et/ou le développement de projets (sites vitrine, site web,...) pour les clients de
                       l'entreprise.
                       Pour ce faire, vous êtes amené à analyser et participer à l'élaboration des nouveaux projets :
                       prise de brief, rédaction/ mise en place des spécifications techniques, définir les délais pour
                       chaque projet,...
                       Vous intervenez également sur des projets déjà existants pour assurer le développement de
                       nouvelles fonctionnalités, prendre en main la maintenance et les interventions nécessaires,...
                       Enfin, de façon générale, vous améliorez de façon continue votre code et prenez le temps de
                       documenter les projets.
                       Au sein d'une équipe dynamique et conviviale, vous pouvez être amené à faire un petit café / du
                       thé pour travailler dans la bonne humeur !", income: 37_000, contract: "CDD")
offer4 = Offer.new(name: "Développeur Full Stack", description: "Dans le cadre d'un accroissement d'activité,
                       vous rejoignez une équipe de 4-5 Développeurs (tous niveaux), pour travailler ensemble sur la
                       conception et/ou le développement de projets (sites vitrine, site web,...) pour les clients de
                       l'entreprise.
                       Pour ce faire, vous êtes amené à analyser et participer à l'élaboration des nouveaux projets :
                       prise de brief, rédaction/ mise en place des spécifications techniques, définir les délais pour
                       chaque projet,...
                       Vous intervenez également sur des projets déjà existants pour assurer le développement de
                       nouvelles fonctionnalités, prendre en main la maintenance et les interventions nécessaires,...
                       Enfin, de façon générale, vous améliorez de façon continue votre code et prenez le temps de
                       documenter les projets.
                       Au sein d'une équipe dynamique et conviviale, vous pouvez être amené à faire un petit café / du
                       thé pour travailler dans la bonne humeur !", income: 29_000, contract: "Freelance")
offer5 = Offer.new(name: "Développeur Back end", description: "Dans le cadre d'un accroissement d'activité,
                       vous rejoignez une équipe de 4-5 Développeurs (tous niveaux), pour travailler ensemble sur la
                       conception et/ou le développement de projets (sites vitrine, site web,...) pour les clients de
                       l'entreprise.
                       Pour ce faire, vous êtes amené à analyser et participer à l'élaboration des nouveaux projets :
                       prise de brief, rédaction/ mise en place des spécifications techniques, définir les délais pour
                       chaque projet,...
                       Vous intervenez également sur des projets déjà existants pour assurer le développement de
                       nouvelles fonctionnalités, prendre en main la maintenance et les interventions nécessaires,...
                       Enfin, de façon générale, vous améliorez de façon continue votre code et prenez le temps de
                       documenter les projets.
                       Au sein d'une équipe dynamique et conviviale, vous pouvez être amené à faire un petit café / du
                       thé pour travailler dans la bonne humeur !", income: 28_500, contract: "Apprentissage")

offer1.company = company1
offer1.save!
p offer1

offer2.company = company2
offer2.save!
p offer2

offer3.company = company3
offer3.save!
p offer3

offer4.company = company4
offer4.save!
p offer4

offer5.company = company5
offer5.save!
p offer5
puts "Offers creation finished!"

puts "Creating users..."
user2 = User.create!(first_name: "Camélia", last_name: "Fauchard", email: "cami.chani1@gmail.com", password: "azerty")
user3 = User.create!(first_name: "Selom", last_name: "Azakpo", email: "chocoviyaovi@gmail.com", password: "azerty")
user4 = User.create!(first_name: "Flavie", last_name: "Parmentier", email: "flavie.parmentier@gmail.com", password: "azerty")
user1 = User.create!(first_name: "Dimitri", last_name: "Bartone", email: "dimitribartone@hotmail.fr", password: "azerty")

p user1
p user2
p user3
p user4
puts "Users creation finished!"
