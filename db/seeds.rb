# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# encoding: utf-8

puts "Creating users"
AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create(email: 'emmajouffroypro@gmail.com', password: 'emmajou', password_confirmation: 'emmajou')
AdminUser.create(email: 'noemilamane2@gmail.com', password: 'noemil', password_confirmation: 'noemil')
AdminUser.create(email: 'eliemargoet@gmail.com', password: 'eliema', password_confirmation: 'eliema')
AdminUser.create(email: 'fleurgriffon@gmail.com', password: 'fleurg', password_confirmation: 'fleurg')
AdminUser.create(email: 'florianlaville33@gmail.com', password: 'florian', password_confirmation: 'florian')
AdminUser.create(email: 'margauxdelafontaine@gmail.com', password: 'margaux', password_confirmation: 'margaux')
AdminUser.create(email: 'swann.latasa@gmail.com', password: 'swannl', password_confirmation: 'swannl')
AdminUser.create(email: 'lafon_aurelien@orange.fr', password: 'aurelien', password_confirmation: 'aurelien')
AdminUser.create(email: 'galaweshheil@gmail.com', password: 'galawe', password_confirmation: 'galawe')
AdminUser.create(email: 'yann.le.roux49@gmail.com', password: 'yannle', password_confirmation: 'yannle')
AdminUser.create(email: 'ineslebuhan@gmail.com', password: 'inesle', password_confirmation: 'inesle')
AdminUser.create(email: 'elisamauger01@gmail.com', password: 'elisam', password_confirmation: 'elisam')
AdminUser.create(email: 'davidlaures33@gmail.com', password: 'davidl', password_confirmation: 'davidl')
AdminUser.create(email: 'thomas.hawkins.r@gmail.com', password: 'thomas', password_confirmation: 'thomas')
AdminUser.create(email: 'mr.heyben@gmail.com', password: 'benjamin', password_confirmation: 'benjamin')
puts "\e[32mUsers created\e[0m"

puts ''

notions = {
	"La vie" => "vie",
	"L'âge" => "age",
	"La mort" => "mort",
	"L'alimentation" => "alimentation",
	"L'aliment" => "aliment",
	"Le jeu" => "jeu",
	"Le sport" => "sport",
	"Le commerce" => "commerce",
	"L'argent" => "argent",
	"L'économie" => "economie",
	"L'entreprise" => "entreprise",
	"La possession" => "possession",
	"La communication" => "communication",
	"Le langage" => "langage",
	"L'écriture" => "ecriture",
	"informer" => "informer",
	"La télécommunication" => "telecommunication",
	"L'internet" => "internet",
	"Le nom" => "nom",
	"Le mouvement" => "mouvement",
	"Le déplacement" => "deplacement",
	"Le transport" => "transport",
	"Le bateau" => "bateau",
	"L'automobile" => "automobile",
	"Le train" => "train",
	"L'avion" => "avion",
	"Les deux-roues" => "deuxroues",
	"Le corps" => "corps",
	"L'organe" => "organe",
	"La santé" => "sante",
	"L'hygiène" => "hygiene",
	"Le sommeil" => "sommeil",
	"La position" => "position",
	"La sexualité" => "sexualite",
	"La technique" => "technique",
	"L'instrument" => "instrument",
	"L'ordinateurs" => "ordinateur",
	"L'animal" => "animaux",
	"L'invertébré" => "invertebres",
	"Le vertébré" => "vertebre",
	"La plante" => "plante",
	"Le pouvoir" => "pouvoir",
	"La politique" => "politique",
	"Le pays" => "pays",
	"La justice" => "justice",
	"La sécurité" => "securite",
	"Le militaire" => "militaire",
	"La famille" => "famille",
	"Le mariage" => "mariage",
	"La matière" => "matiere",
	"L'atome" => "atome",
	"Le déchet" => "dechet",
	"Le feu" => "feu",
	"L'eau" => "eau",
	"La force" => "force",
	"L'edifice" => "edifice",
	"La ville" => "ville",
	"La voie" => "voie",
	"L'espace" => "espace",
	"L'orientation" => "orientation",
	"La distance" => "distance",
	"L'univers" => "univers",
	"La Terre" => "terre",
	"La mer" => "mer",
	"Le continent" => "continent",
	"Le climat" => "climat",
	"La saison" => "saison",
	"Le temps" => "temps",
	"La date-Calendrier" => "calendrier",
	"Le fait" => "fait",
	"L'intellect" => "intellect",
	"Le savoir" => "savoir",
	"L'apprentissage" => "apprentissage",
	"Le sens" => "sens",
	"Oui-Non" => "ouinon",
	"La verité" => "verite",
	"La société" => "societe",
	"La fête" => "fete",
	"L'esprit" => "esprit",
	"La religion" => "religion",
	"Le nombre" => "nom",
	"La mesure" => "mesure",
	"La dimension" => "dimension",
	"Le sentiment" => "sentiment",
	"La salutation" => "salutation",
	"Faire" => "faire",
	"La finalité" => "finalite",
	"Le travail" => "travail",
	"L'agriculture" => "agriculture",
	"L'industrie" => "industrie",
	"La vision" => "vision",
	"L'audition" => "audition",
	"Le toucher" => "toucher",
	"L'être humain" => "etrehumain",
	"Soi" => "soi",
	"L'objet" => "objets",
	"Le textile" => "textile",
	"L'art" => "art"
}

length = notions.values.length.to_f
puts "Creating notions"
notions = notions.map.with_index do |(name, photo), n|
	print "\r      \r#{((n.to_f/length)*10000).round.to_f/100}%"
	Notion.create name: name, photo: File.new("#{__dir__}/files/notions/#{photo}.jpg")
end
puts "\r       \r\e[32mNotions created\e[0m"

puts ''



puts "Creating a sample article"
Article.create(titre: 'Lorem ipsum dolor sit amet', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam quia veritatis, accusamus fugit ab excepturi, ducimus doloremque non dignissimos sunt nulla consectetur quisquam deserunt repudiandae consequuntur eos, ipsam tenetur consequatur.', date: Date.new, notions: [notions.first])
puts "\e[32mArticle created\e[0m"

puts ''

puts "\e[32mYou can access the admin panel with the folowing credentials:\e[0m"
puts "Email: admin@example.com"
puts "Password: password"

puts ''

puts "\e[32mFinished\e[0m"

puts ''
