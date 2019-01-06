require 'pry'
class CrossfitGem::Controller 


    def call 
        puts "Hello, Thank you for taking the time to learn more about the 2018 Crossfit Games!" 
        puts "Please take a look at the menu, and decide how you would like to proceed!"
        puts "---------------------------------------------------------------------------------"
        CrossfitGem::Affiliate.list_affiliates
        CrossfitGem::Entrant.list_entrants
        self.menu
        
    end 

    def menu 
        puts "To view a list of all affiliates type 'list Affiliates'."
        puts "To view a list of all entrants type 'list Entrants'."
        puts "To find a specifc affiliate to view information on, type 'find Affiliate'."
        var = gets.chomp
        case var 
            when 'list Affiliates'
                  list_affiliates 
            when 'list Entrants'
                  list_entrants 
            when 'find Affiliate'
                  find_affiliate
            
        end 
    end 

    def list_affiliates 
        CrossfitGem::Affiliate.all.sort_by {|affiliate| affiliate.name}.each_with_index do |affiliate, i| 
         puts "#{i+1}. #{affiliate.name}."
        end
    end 

    def list_entrants 
        CrossfitGem::Entrant.all.sort_by {|entrant| entrant.competitorName}.each_with_index do |entrant, i| 
         puts "#{i+1}. #{entrant.competitorName}."
        end 
    end 

    def find_affiliate
        puts "Please enter the name of an Affiliate:"
        name = gets.chomp.upcase 
        CrossfitGem::Affiliate.find_by_name(name) 
    end 

    #def find_entrant 
        
    #end 
    

    


end 