require 'pry'
class CrossfitGem::Affiliate 
 
    def self.list_affiliates
        arr = []
        var = CrossfitGem::Api.data
         var["leaderboardRows"].each do |i| 
          entrant = i["entrant"]
           arr << entrant["affiliateName"] 
        end
        arr
    end 
    

end 