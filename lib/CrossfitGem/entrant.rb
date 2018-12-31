class CrossfitGem::Entrant 

   def self.list_entrants 
        arr = []
        var = CrossfitGem::Api.data 
        var["leaderboardRows"].each do |i| 
            entrant = i["entrant"] 
            arr << entrant["competitorName"]
        end 
        arr
   end 
    
    



end 