# 02_password.rb

def signup
  puts "Choisissez un mot de passe."
  print "mot de passe: "
  password = gets.chomp
  return password
end

def login(password)
  puts "Entrez votre mot de passe."
  print "mot de passe: "
  password_verif = gets.chomp
  until password == password_verif
    puts "Mauvais mot de passe, réessayez."
    print "mot de passe: "
    password_verif = gets.chomp
  end
end

def welcome_screen
  puts "Bienvenue dans votre zone secrète."
  puts "Attention ! Derrière vous ! Quelqu'un vous observe !"
  puts "Pour des raisons de sécurité, la zone secrète s'auto-détruira dans 10 secondes."
  for count in (1..10)
    puts count
  end
  puts "💥 BOOOOOM 💥"
end  

def perform
  password = signup
  password_verif = login(password)
  welcome_screen
end 

perform