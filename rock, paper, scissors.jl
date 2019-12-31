
using Random

player = 0
enemy = 0
playerhealth = 3
enemyhealth = 3

function Turn()
    println("Choose your number\n1. Rock\n2. Paper\n3. Scissors")
    return readline()
end

function Checking(player, enemy)
    (player == 1 && enemy == 2 || player == 2 && enemy == 3 || player == 3 && enemy ==1) && return 0
    
    (player == 1 && enemy == 3 || player == 2 && enemy == 1 || player == 3 && enemy ==2) && return 1
    
    (player == 1 && enemy == 1 || player == 2 && enemy == 2 || player == 3 && enemy ==3) && return 2
end

function Win(playerhealth, enemyhealth)
        (playerhealth == 0) && return "Win!"
        (enemyhealth == 0) && return "Defeat!"
end
    
while playerhealth > 0 && enemyhealth >0
            enemy = rand(1:3)
           player = Turn()
            player = parse(Int64, player)

            score = Checking(player, enemy)
        println("\n")
            score <1 ? playerhealth= playerhealth-1 : ""
            2>score >=1 ? enemyhealth = enemyhealth - 1 : ""
    
            println("Your health ", playerhealth, "\nEnemy health ", enemyhealth, "\n")
    
            Win(playerhealth, enemyhealth)
       end


