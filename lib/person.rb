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

    def happiness=(level)
        if level > 10
            @happiness = 10
        elsif level < 0
            @happiness = 0 if level < 0
        else
            @happiness = level
        end
    end

    def hygiene=(level)
        if level > 10
            @hygiene = 10
        elsif level < 0
            @hygiene = 0 if level < 0
        else
            @hygiene = level
        end
    end

    def clean?
        @hygiene > 7       
    end
 
    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
 

    def take_bath  
        self.hygiene += 4        
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    def work_out
        self.happiness += 2       
        self.hygiene -= 3       
        "♪ another one bites the dust ♫"
    end
 
    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3}         
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
 
    def start_conversation(friend, topic)
        convo_members = [self, friend]

        case topic
        when "politics"
            convo_members.each {|o| o.happiness -= 2} 
            first = "partisan"
            second = "lobbyist"
        when "weather"
            convo_members.each {|o| o.happiness += 1} 
            first = "sun"
            second = "rain"
        else
            first ||= "blah"
            second ||= "blah"
        end
        
        "blah blah #{first} blah #{second}"
    end
end
 