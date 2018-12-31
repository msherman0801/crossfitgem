require 'pry'
class CrossfitGem::Controller 


    def call 
        puts "Hello, Thank you for taking the time to learn more about the 2018 Crossfit Games!" 
        puts "Please take a look at the menu, and decide how you would like to view the information!"
        puts "---------------------------------------------------------------------------------"
        self.menu
    end 

    def menu 
        puts "To view a list of all affiliates type 'list affiliates'."
        puts "To view a list of all entrants type 'list entrants'."
        puts "To view a specific affiliate, please type the name of the affiliate you would like to view information on."
        puts "To view a specific entrant, please type the last name of the entrant you would like to view information on."
        var = gets.chomp
        case var 
            when 'list affiliates'
                 self.list_affiliates 
            when 'list entrants'
                 self.list_entrants 
        end 
    end 

    def list_affiliates 
        puts CrossfitGem::Affiliate.list_affiliates 
    end 

    def list_entrants 
        puts CrossfitGem::Entrant.list_entrants 
    end 

    


end 