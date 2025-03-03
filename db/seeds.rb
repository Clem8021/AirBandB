puts "Cleaning database..."

Experience.destroy_all
User.destroy_all

puts "creating users..."

User.create!(
  name: "Jean",
  email: "jean@test.com",
  password: "123456")

puts "Finished! Created users."

puts "Creating experiences..."

Experience.create!(
  name: "Batteur Qui Explose Tout ",
  stage_name: "Un garage insonorisé",
  musical_genre: "Rock",
  absurd_requirement: "Détruire une batterie",
  price_per_day: 75,
  user: User.first
)
Experience.create!(
  name: "Diva pour une Nuit ",
  stage_name: "Chambre VIP avec micro doré",
  musical_genre: "Pop",
  absurd_requirement: "Dressing ultra-exigeant",
  price_per_day: 50,
  user: User.first
 )
 Experience.create!(
  name: "Le Violoniste Acrobatique",
  stage_name: "Un cirque désaffecté",
  musical_genre: "Classique Avant-Garde",
  absurd_requirement: "Jouer en équilibre sur une boule",
  price_per_day: 40,
  user: User.first
 )
 Experience.create!(
  name: "Le Chanteur Sous-Marin",
  stage_name: "Une piscine olympique",
  musical_genre: "Opéra Expérimental",
  absurd_requirement: "Chanter entièrement sous l'eau",
  price_per_day: 90,
  user: User.first
 )
 Experience.create!(
  name: "Le Pianiste Cycliste",
  stage_name: "Un vélodrome abandonné",
  musical_genre: "Jazz Électronique",
  absurd_requirement: "Jouer du piano en pédalant",
  price_per_day: 90,
  user: User.first
 )
 Experience.create!(
  name: "Le Drummer Culinaire",
  stage_name: "Une cuisine industrielle",
  musical_genre: "Noise Électro",
  absurd_requirement: "Utiliser des ustensiles de cuisine comme instruments",
  price_per_day: 85,
  user: User.first
 )
 Experience.create!(
  name: "Le Saxophoniste Funambule",
  stage_name: "Un pont suspendu",
  musical_genre: "Jazz Expérimental",
  absurd_requirement: "Jouer en marchant sur un fil",
  price_per_day: 150,
  user: User.first
 )
 Experience.create!(
  name: "Le Rappeur Linguistique",
  stage_name: "Une bibliothèque nationale",
  musical_genre: "Rap Conceptuel",
  absurd_requirement: "Rapper uniquement avec des mots du dictionnaire",
  price_per_day: 100,
  user: User.first
   )
Experience.create!(
  name: "Le Guitariste Météorologique",
  stage_name: "Un observatoire météorologique",
  musical_genre: "Rock Atmosphérique",
  absurd_requirement: "Jouer selon les conditions météorologiques",
  price_per_day: 110,
  user: User.first
  )
Experience.create!(
  name: "Le Claviériste Robotique",
  stage_name: "Un atelier de robotique",
  musical_genre: "Électro Expérimental",
  absurd_requirement: "Jouer avec des mouvements robotiques",
  price_per_day: 83,
  user: User.first
)
Experience.create!(
  name: "Le Percussionniste Architectural",
  stage_name: "Un chantier de construction",
  musical_genre: "Noise Industriel",
  absurd_requirement: "Utiliser des éléments de construction comme instruments",
  price_per_day: 95,
  user: User.first
)

puts "Finished! Created experiences."
