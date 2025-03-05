require "open-uri"

puts "Cleaning database..."

Experience.destroy_all

puts "Creating experiences..."

batteur = Experience.create!(
  name: "Batteur Qui Explose Tout ",
  stage_name: "Un garage insonorisé",
  musical_genre: "Rock",
  absurd_requirement: "Détruire une batterie",
  price_per_day: 75
)
file = URI.open('https://images.unsplash.com/photo-1519892300165-cb5542fb47c7?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
batteur.photo.attach(io: file, filename: "drummer", content_type: "image/png")
batteur.save

diva = Experience.create!(
  name: "Diva pour une Nuit ",
  stage_name: "Chambre VIP avec micro doré",
  musical_genre: "Pop",
  absurd_requirement: "Dressing ultra-exigeant",
  price_per_day: 50
)
file = URI.open('https://images.unsplash.com/photo-1507676184212-d03ab07a01bf?q=80&w=2938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
diva.photo.attach(io: file, filename: "drummer", content_type: "image/png")
diva.save

violon = Experience.create!(
  name: "Le Violoniste Acrobatique",
  stage_name: "Un cirque désaffecté",
  musical_genre: "Classique Avant-Garde",
  absurd_requirement: "Jouer en équilibre sur une boule",
  price_per_day: 40
)
file = URI.open('https://images.unsplash.com/photo-1460036521480-ff49c08c2781?q=80&w=2946&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
violon.photo.attach(io: file, filename: "drummer", content_type: "image/png")
violon.save

eau = Experience.create!(
  name: "Le Chanteur Sous-Marin",
  stage_name: "Une piscine olympique",
  musical_genre: "Opéra Expérimental",
  absurd_requirement: "Chanter entièrement sous l'eau",
  price_per_day: 90
)
file = URI.open('https://images.unsplash.com/photo-1560364897-91578ff41817?q=80&w=2748&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
eau.photo.attach(io: file, filename: "drummer", content_type: "image/png")
eau.save

cycliste = Experience.create!(
  name: "Le Pianiste Cycliste",
  stage_name: "Un vélodrome abandonné",
  musical_genre: "Jazz Électronique",
  absurd_requirement: "Jouer du piano en pédalant",
  price_per_day: 90
)
file = URI.open('https://images.unsplash.com/photo-1484920274317-87885fcbc504?q=80&w=2832&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
cycliste.photo.attach(io: file, filename: "drummer", content_type: "image/png")
cycliste.save

culinaire = Experience.create!(
  name: "Le Drummer Culinaire",
  stage_name: "Une cuisine industrielle",
  musical_genre: "Noise Électro",
  absurd_requirement: "Utiliser des ustensiles de cuisine comme instruments",
  price_per_day: 85
)
file = URI.open('https://images.unsplash.com/photo-1586969593928-1c87c1f9c2ef?q=80&w=2946&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
culinaire.photo.attach(io: file, filename: "drummer", content_type: "image/png")
culinaire.save

saxo = Experience.create!(
  name: "Le Saxophoniste Funambule",
  stage_name: "Un pont suspendu",
  musical_genre: "Jazz Expérimental",
  absurd_requirement: "Jouer en marchant sur un fil",
  price_per_day: 150
)
file = URI.open('https://images.unsplash.com/photo-1623123776919-e5208e9b0b47?q=80&w=2714&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
saxo.photo.attach(io: file, filename: "drummer", content_type: "image/png")
saxo.save

rappeur = Experience.create!(
  name: "Le Rappeur Linguistique",
  stage_name: "Une bibliothèque nationale",
  musical_genre: "Rap Conceptuel",
  absurd_requirement: "Rapper uniquement avec des mots du dictionnaire",
  price_per_day: 100
)
file = URI.open('https://images.unsplash.com/photo-1620969427101-7a2bb6d83273?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
rappeur.photo.attach(io: file, filename: "drummer", content_type: "image/png")
rappeur.save

guitariste = Experience.create!(
  name: "Le Guitariste Météorologique",
  stage_name: "Un observatoire météorologique",
  musical_genre: "Rock Atmosphérique",
  absurd_requirement: "Jouer selon les conditions météorologiques",
  price_per_day: 110
)
file = URI.open('https://images.unsplash.com/photo-1510915361894-db8b60106cb1?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
guitariste.photo.attach(io: file, filename: "drummer", content_type: "image/png")
guitariste.save

robot = Experience.create!(
  name: "Le Claviériste Robotique",
  stage_name: "Un atelier de robotique",
  musical_genre: "Électro Expérimental",
  absurd_requirement: "Jouer avec des mouvements robotiques",
  price_per_day: 83
)
file = URI.open('https://images.unsplash.com/photo-1582571352032-448f7928eca3?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fHJvYm90fGVufDB8fDB8fHww')
robot.photo.attach(io: file, filename: "drummer", content_type: "image/png")
robot.save

puts "Finished! Created experiences."
