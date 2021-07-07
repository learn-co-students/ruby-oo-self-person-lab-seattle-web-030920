# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name


    def happiness
        @happiness
    end

    def hygiene
        @hygiene
    end

    def initialize(name)
        @name = name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def happiness=(happiness)
        @happiness = self.range(happiness)
    end

    def hygiene=(hygiene)
        @hygiene = self.range(hygiene)
    end

    def range(input)
        #binding.pry()
        output = input
        if(output > 10)
            output = 10
         #   binding.pry()
        elsif (input < 0)
            output = 0
         #   binding.pry()            
        end
        #binding.pry()         
        output        
    end

    def clean?
        if(@hygiene > 7)
            true
        else
            false
        end
    end

    def happy?
        if(@happiness > 7)
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account+= salary
        "all about the benjamins"        
    end

    def take_bath
        self.hygiene = (@hygiene+4)        
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness+2
        self.hygiene = @hygiene-3
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        value = self.range(3)
        self.happiness+=3
        person.happiness+=3
        "Hi #{person.name}! It's #{self.name}. How are you?"    
    end

    # def start_conversation(person, topic)
    #     if(topic == "politics")
    #         self.happiness = self.happiness -2
    #         person.happiness = person.happiness -2
    #         "blah blah partisan blah lobbyist"
    #     elsif(topic == "weather")
    #         self.happiness = self.happiness +1
    #         person.happiness = person.happiness +1
    #         "blah blah sun blah rain"
    #     else
    #         "blah blah blah blah blah"
    #     end
    # end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness = person.happiness - 2
            self.happiness = self.happiness - 2            
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness = person.happiness + 1
            self.happiness = self.happiness + 1            
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end