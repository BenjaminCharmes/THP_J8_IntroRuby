# 01_pyramids.rb

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "

stage = gets.chomp.to_i

until stage % 2 != 0 and stage > 0
  puts "Choisis un nombre positif impair, merci !"
  print "> "
  stage = gets.chomp.to_i
end

puts "Voici la pyramide :"

def pyramid(stage)
  (stage / 2).times do |top|
    print ' ' * (stage / 2 - top)
    puts '#' * (2 * top + 1)
  end
  1.times do |mid|
    puts '#' * stage
  end
  (stage / 2).times do |bot|
    print ' ' * (bot + 1)
    puts '#' * (stage - 2 - 2 * bot)
  end

end

pyramid (stage)