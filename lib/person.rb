# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_writer
    attr_accessor :bank_account, :happiness, :hygiene 

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def test=(data)

    end 
    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    
    end
    
    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def clean?
        self.hygiene > 7
        
    end 

    def happy?
        self.happiness > 7 
        
    end

    def get_paid(amount)
        self.bank_account += amount 
        "all about the benjamins"
    end

    def take_bath
        
        self.hygiene += 4
        @hygiene 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    def work_out
        self.happiness += 2 #self. --> i'm looking for happiness within self; += --> i'm looking for the setter method happiness
        self.hygiene -= 3
        @happiness
        @hygiene 
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        @happiness 
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(starter, topic)
        if topic == "politics"
            self.happiness -= 2
            starter.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            starter.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

# test = Person.new("Tester")
# binding.pry