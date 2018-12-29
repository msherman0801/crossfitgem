class CrossfitGem::Controller 

    def call 
       self.welcome
    end 

    def welcome 
        puts CrossfitGem::Api.data
    end 


end 