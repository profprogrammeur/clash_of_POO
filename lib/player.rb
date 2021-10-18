
class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts "#{name} a #{life_points} points de vie !!"
    end

    def gets_damage(damage) #damage_received est un entier qu'on met en entrée de la méthode
        #On soustrait l'entier en entrée au niveau de vie de l'objet sur lequel la méthode est appliquée :
        @life_points = @life_points - damage
        
        #Si le niveau de vie de l'objet est inférieur ou égal à zéro, le joueur est tué et on affiche un message.
        if @life_points <= 0
        puts "le joueur #{@name} a été tué !" # l'écriture #{} permet d'insérer une variable dans un string
        puts "     (×_×#)   "
        end
    end

    def attacks(other_player)
        puts "Le joueur #{name} attaque le joueur #{other_player.name}"
        damage = compute_damage
        puts "Il lui inflige #{damage} points de dommages"
        other_player.gets_damage(damage)
    end

    def compute_damage
        return rand(1..6)
    end

    def self.players_state(player1,player2)
      puts ""
      puts "Voici l'état de chaque joueur :"
      print player1.show_state
      print player2.show_state
      puts ""
    end
end

