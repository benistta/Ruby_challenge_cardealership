class Dealership
    attr_reader :name, :address, :inventory
    def initialize(name, address)
        @name = name
        @address = address
        @inventory = []
    end

    def inventory_count
        @inventory.count
    end

    def add_car(car)
        @inventory << car
        # require 'pry'; binding.pry
    end

    def has_inventory? 
        if @inventory.count <= 0
            false
        elsif @inventory.count > 0
            true
        end
    end

    # def cars_by_make(make)
    #     result = []
    #     @inventory.each do |car|
    #         if car.make == make
    #          result << car
    #         end
            
    #     end
    #     return result
    # end

    def cars_by_make(make)
        @inventory.find_all do |car|
            car.make == make       
        end
    end

    def total_value
        @inventory.sum do |car|
            car.monthly_payment * car.loan_length
        # require 'pry'; binding.pry
        end  
    end

    def details
        {"address" => @address, "total_value" => total_value}
    end

    def average_price_of_car
        a = (total_value/4).to_s
        # require 'pry'; binding.pry
        return a.reverse.gsub(/...(?=.)/,'\&,').reverse
    end
    
    def cars_sorted_by_price
        @inventory.sort_by do |car|
            car.monthly_payment * car.loan_length
            
        # require 'pry'; binding.pry
        end
    end
end