class Player
	def hand(hand)
	  hand
	end
end
   
class Enemy
	def hand(hand)
	  hand
	end
end
   
class Janken
	def pon(player_hand, enemy_hand)
	  result = (player_hand-enemy_hand+3)%3
	  if result==2
	    "Win"
    elsif result==1
	    "Loss"
	  else
	    "Draw" 
	  end
	end
end
   
while true 
  puts "please enter a number:","0: Goo","1: Choki","2: Par"
	number=gets.to_i
	if(number<0 || number>3)
	  puts "out of boundary"
	else
	  player = Player.new
	  player_hand=player.hand(number)
	  arr=[0,1,2]
	  randomly=arr[rand(arr.count)];
	  enemy = Enemy.new
	  enemy_hand=enemy.hand(randomly)
	  janken = Janken.new
	  game_result = janken.pon(player_hand,enemy_hand)
	  if game_result=="Win"
	    puts "The hand of the other party is throb. You are the winner"
	    break
	  elsif game_result== "Loss"
	    puts "The hand of the other party is throb. You are the looser"
	    break
	  else
	    puts "The hand of the other party is throb. It is a draw"
	  end    
	end
end