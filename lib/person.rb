# your code goes here
require 'pry'
class Person
attr_reader :name
attr_accessor :bank_account, :hygiene, :happiness

def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
end

def happy?
    if @happiness > 7
        true
    else
        false
    end
end

def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

def clean?
    if @hygiene > 7
        true
    else 
        false
    end
end

def get_paid(amount)
self.bank_account+=amount
self.happiness += 1
"all about the benjamins"
end 

def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
    end

def work_out
    self.happiness+=2
    self.hygiene-=3
    "♪ another one bites the dust ♫"
end

def start_conversation(person, topic)
    objects = [self, person]
    if topic == "politics"
      objects.each { |o| o.happiness -= 2}
      first, second = ["partisan", "lobbyist"]
    elsif topic == "weather"
      objects.each { |o| o.happiness += 1}
      first, second = ["sun", "rain"]
    end
    first ||= "blah"
    second ||= "blah"
    base_string = "blah blah #{first} blah #{second}"
  end

  def call_friend(friend)
    [friend, self].each {|o| o.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


end