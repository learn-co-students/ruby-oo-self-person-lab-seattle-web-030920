class Person
    #instance variables: name, bank_account, hygiene, happiness
    attr_accessor :bank_account
    attr_writer
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = check_points(@hygiene)
    end

    def happiness=(happiness)
        @happiness = happiness
        @happiness = check_points(@happiness)
    end

    def check_points(points) #helper method for hygiene and happiness points - does not allow them to go above 10 or below 0
        points > 10 ? points = 10 : ""
        points < 0 ? points = 0 : ""
        points
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend) #refactor this for consistency
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        topic == "politics" ? (self.happiness = self.happiness - 2) && (person.happiness = person.happiness - 2) && (return "blah blah partisan blah lobbyist") : ""
        topic == "weather" ? (self.happiness = self.happiness + 1) && (person.happiness = person.happiness + 1) && (return "blah blah sun blah rain") : ""
        "blah blah blah blah blah"
    end

end
