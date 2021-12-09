# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database..."
Wishlist.destroy_all
Offer.destroy_all
Company.destroy_all
User.destroy_all

puts "Creating companies..."
company1 = Company.create!(name: "OVH", city: "Roubaix", address: "2 Rue Kellermann", eco_scoring: 15,
                           social_scoring: 20, environmental_scoring: 19, logo_url:"OVH.png", accessibility: false,
                           safe_space: false, remote: true)
company2 = Company.create!(name: "Le Wagon", city: "Lille", address: "2 Av. des Saules", eco_scoring: 87,
                           social_scoring: 95, environmental_scoring: 85, logo_url: "wagon.png", accessibility: true,
                          safe_space: true, remote: true)
company3 = Company.create!(name: "Leroy Merlin", city: "Lezennes", address: "Rue Chanzy", eco_scoring: 36,
                           social_scoring: 38, environmental_scoring: 33, logo_url: "leroymerlin.png", accessibility: true,
                            safe_space: false, remote: true)
company4 = Company.create!(name: "Decathlon", city: "Villeneuve-d'Ascq", address: "121 Bd de Valmy", eco_scoring: 18,
                           social_scoring: 19, environmental_scoring: 11, logo_url: "decathlon.png", accessibility: true,
                            safe_space: true, remote: true)
company5 = Company.create!(name: "M6 Web", city: "La Madeleine", address: "125 Av de la République", eco_scoring: 77,
                           social_scoring: 72, environmental_scoring: 71, logo_url: "logo_m6.png", accessibility: true,
                          safe_space: true, remote: true)
company6 = Company.create!(name: "La Redoute", city: "Roubaix", address: "110 Rue de Blanchemaille", eco_scoring: 55,
                           social_scoring: 60, environmental_scoring: 52, logo_url: "laredoute.jpg", accessibility: true,
                           safe_space: true, remote: true)
company7 = Company.create!(name: "Les Mains Dans Le Guidon", city: "Lille", address: "49 rue Bourignon", eco_scoring: 97,
                           social_scoring: 89, environmental_scoring: 94, logo_url: "les_mains.png", accessibility: true,
                            safe_space: true, remote: true)
company8 = Company.create!(name: "Bio C' Bon", city: "Lille", address: "45 rue Colbert", eco_scoring: 80,
                           social_scoring: 69, environmental_scoring: 72, logo_url: "bio_c_bon.png", accessibility: true,
                          safe_space: true, remote: true)
company9 = Company.create!(name: "Psa Automobiles Sa", city: "Poissy", address: "2 Boulevard de l'europe", eco_scoring: 25,
                           social_scoring: 35, environmental_scoring: 20, logo_url: "psa.png", accessibility: true,
                          safe_space: false, remote: true)
company10 = Company.create!(name: "Electricité de France", city: "Paris", address: "222-30 Avenue de Wagram", eco_scoring: 60,
                           social_scoring: 55, environmental_scoring: 40, logo_url: "edf.png", accessibility: true,
                          safe_space: false, remote: true)
company11 = Company.create!(name: "Airbus", city: "Blagnac", address: "1,rond point Maurice Bellonte", eco_scoring: 10,
                           social_scoring: 23, environmental_scoring: 7, logo_url: "airbus.jpeg", accessibility: true,
                          safe_space: false, remote: true)
company12 = Company.create!(name: "Renault sas", city: "Boulogne-Billancourt", address: "13 Quai Alphonse le Gallo", eco_scoring: 50,
                           social_scoring: 65, environmental_scoring: 68, logo_url: "renault.png", accessibility: true,
                          safe_space: true, remote: true)
company13 = Company.create!(name: "Orange", city: "Issy-les-Moulineaux", address: "111 quai du Président Roosevelt", eco_scoring: 30,
                           social_scoring: 5, environmental_scoring: 43, logo_url: "orange.png", accessibility: true,
                          safe_space: false, remote: true)







p company1
p company2
p company3
p company4
p company5
p company6
p company7
p company8
p company9
p company10
p company11
p company12
p company13
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
offer6 = Offer.new(name: "Social Media Manager", description: "Dans le cadre d'un accroissement d'activité,
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
                       thé pour travailler dans la bonne humeur !", income: 33_500, contract: "CDI")
offer7 = Offer.new(name: "Graphiste", description: "Dans le cadre d'un accroissement d'activité,
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
                       thé pour travailler dans la bonne humeur !", income: 26_500, contract: "Freelance")
offer8 = Offer.new(name: "Content Manager", description: "Dans le cadre d'un accroissement d'activité,
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
                       thé pour travailler dans la bonne humeur !", income: 23_000, contract: "CDI")
offer9 = Offer.new(name: "Scrum Master", description: "Dans le cadre d'un accroissement d'activité,
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
                       thé pour travailler dans la bonne humeur !", income: 33_000, contract: "CDI")
offer10 = Offer.new(name: "Social Media Manager", description: "Dans le cadre d'un accroissement d'activité,
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
                       thé pour travailler dans la bonne humeur !", income: 38_500, contract: "CDD")

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

offer6.company = company6
offer6.save!
p offer6

offer7.company = company7
offer7.save!
p offer7

offer8.company = company8
offer8.save!
p offer8

offer9.company = company6
offer9.save!
p offer9

offer10.company = company2
offer10.save!
p offer10
puts "Offers creation finished!"

puts "Creating users..."
user2 = User.create!(first_name: "Camélia", last_name: "Fauchart", email: "cami.chani1@gmail.com", password: "azerty")
user3 = User.create!(first_name: "Selom", last_name: "Azakpo", email: "chocoviyaovi@gmail.com", password: "azerty")
user4 = User.create!(first_name: "Flavie", last_name: "Parmentier", email: "flavie.parmentier@gmail.com", password: "azerty")
user1 = User.create!(first_name: "Dimitri", last_name: "Bartone", email: "dimitribartone@hotmail.fr", password: "azerty")

p user1
p user2
p user3
p user4
puts "Users creation finished!"

wages = [ 30000, 35000, 40000, 45000]
contract_type = ["CDI", "CDD", "Apprentissage", "Freelance"]
companies = [company1, company2, company3, company4, company5, company6, company7,
             company8, company9, company10, company11, company12, company13]

puts 'Creating 100 fake offers'
100.times do
  offer = Offer.new(
    name: Faker::Job.title,
    description: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 6),
    income: wages.sample,
    contract: contract_type.sample,
  )
  offer.company = companies.sample
   offer.save!
end

puts "New Offers creations finished!"
