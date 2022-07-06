# 03_stairway.rb

def game
  puts "Bonjour jeune aventurier !"
  puts "Il te faut monter c'est 10 marches le plus rapidement possible."
  puts "À toi de jouer !"

  stair = 0
  turn = 0

  until stair > 9
    dice = rand(1..6)
    if dice >= 5
      puts "Tu as fait un #{dice}."
      stair += 1
      puts "Tu monte une marche, tu es maintenant sur la marche numéro #{stair}."
    elsif dice == 1
      if stair > 0
        puts "Tu as fait un #{dice}."
        stair -= 1
        puts "Tu descends d'une marche, tu es maintenant sur la marche numéro #{stair}."
      else
        puts "Tu as fait un #{dice}."
        puts "Tu es toujours sur la marche numéro #{stair}."
      end
    else
      puts "Tu as fait un #{dice}."
      puts "Il ne se passe rien, tu es toujours sur la marche numéro #{stair}."
    end
    turn += 1
  end

  puts "Félicitation ! Tu as réussi à monter cet escalier avec bravoure !"
  puts "Je suis fier de toi jeune aventurier."
  puts "Fin 🎬"

  return turn
end

def average_finish_time
  array_turn = []
  100.times do
    turn = game
    array_turn.push(turn)
  end
  puts "La moyenne du nombre de tour est de: #{array_turn.sum / 100} tours."
end

average_finish_time


