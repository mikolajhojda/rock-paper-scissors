using Random

player = 0
enemy = 0
playerhealth = 0
enemyhealth = 0

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
        (playerhealth == 3) && return "Win!"
        (playerhealth != 3) && return ""
        (enemyhealth == 3) && return "Defeat!"
        (enemyhealth != 3) && return ""
end
    
while playerhealth < 3 && enemyhealth <3
            enemy = rand(1:3)
           player = Turn()
            player = parse(Int64, player)

            score = Checking(player, enemy)
        println("\n")
            score <1 ? enemyhealth = enemyhealth + 1 : ""
            2>score >=1 ? playerhealth= playerhealth+1 : ""
    
            println("Your points ", playerhealth, "\nEnemy points ", enemyhealth, "\n")
    
            println(Win(playerhealth, enemyhealth))
       end
