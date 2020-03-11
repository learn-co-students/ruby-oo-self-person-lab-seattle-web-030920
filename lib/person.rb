require 'pry'
 
class Person
    attr_reader :name
    attr_writer
    attr_accessor :balance, :happiness, :hygiene
 
    def initialize(name)
        @name = name
        @balance = 25
        @happiness = 8
        @hygiene = 8
    end
 
    
    def clean?
        @hygiene > 7       
    end
 
    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @balance += amount
        "All about the benjamins"
    end
 

    def take_bath  
        (self.hygiene <= 6) ? self.hygiene += 4 : self.hygiene = 10       
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    def work_out
        (self.happiness <= 8) ? self.happiness += 2 : self.happiness = 10       
        (self.hygiene >= 3) ? self.hygiene -= 3 : self.hygiene = 0       
        puts "♪ another one bites the dust ♫"
    end
 
    def call_friend(friend)
        [friend, self].each {|o| (o.happiness <= 7) ? o.happiness += 3 : self.happiness = 10 }         
        puts "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
 
    def start_conversation(friend, topic)
        convo_members = [self, friend]

        case topic
        when "politics"
            convo_members.each {|o| (o.happiness >= 1) ? o.happiness -= 1 : self.happiness = 0 } 
            first = "politics"
            second = "lobbyists"
        when "weather"
            convo_members.each {|o| (o.happiness <= 9) ? o.happiness += 1 : self.happiness = 10 } 
            first = "sun"
            second = "rain"
        else
            first ||= "blah"
            second ||= "blah"
        end
        
        "blah blah #{first} blah #{second}"
    end

    myself = Person.new("Christine")
    friend = Person.new("Atticus")
    binding.pry
 
end
 