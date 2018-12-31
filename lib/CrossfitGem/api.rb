
class CrossfitGem::Api 

    def self.data 
        info = open('https://games.crossfit.com/competitions/api/v1/competitions/open/2018/leaderboards?division=1&region=0&scaled=0&sort=0&occupation=0&page=1').read
        JSON.parse(info)
    end 

    def find 
        var = CrossfitGem::Api.data
    end 

end 