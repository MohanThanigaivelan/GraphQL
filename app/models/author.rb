class Author < ApplicationRecord


    def publication_years
        (1..10).map{ 1900 - rand(100) }
    end
    
    def coordinates
        [rand(100), rand(100)]
    end

end
