# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Company.destroy_all
Offer.destroy_all
User.destroy_all

puts "Creating companies..."
company1 = Company.create!(name: "OVH", city: "59100 Roubaix", address: "2 Rue Kellermann", eco_scoring: 56,
                           social_scoring: 66, environmental_scoring: 76)
company2 = Company.create!(name: "Le Wagon", city: "59160 Lille", address: "2 Av. des Saules", eco_scoring: 76,
                           social_scoring: 78, environmental_scoring: 88)
company3 = Company.create!(name: "Leroy Merlin", city: "59260 Lezennes", address: "Rue Chanzy", eco_scoring: 55,
                           social_scoring: 69, environmental_scoring: 64)
company4 = Company.create!(name: "Decathlon", city: "59650 Villeneuve-d'Ascq", address: "121 Bd de Valmy", eco_scoring: 90,
                           social_scoring: 76, environmental_scoring: 88)
company5 = Company.create!(name: "M6 Web", city: "59110 La Madeleine", address: "125 Av de la République ", eco_scoring: 77,
                           social_scoring: 83, environmental_scoring: 49)

p company1
p company2
p company3
p company4
p company5
puts "Companies creation finished!"

puts "Creating offers..."
offer1 = Offer.create!(name: "Community Manager", description: "Sous la responsabilité du Directeur Marketing, vous
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
offer2 = Offer.create!(name: "Community Manager", description: "Sous la responsabilité du Directeur Marketing, vous
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
offer3 = Offer.create!(name: "Développeur Full Stack Ruby", description: "Dans le cadre d'un accroissement d'activité,
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
offer4 = Offer.create!(name: "Développeur Full Stack", description: "Dans le cadre d'un accroissement d'activité,
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
offer5 = Offer.create!(name: "Développeur Back end", description: "Dans le cadre d'un accroissement d'activité,
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

p offer1
p offer2
p offer3
p offer4
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
