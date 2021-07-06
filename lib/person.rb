class Person
  attr_reader :happiness, :hygiene, :name
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end 

  def clean?
    if @hygiene > 7
      true 
    else
      false 
    end
  end
  
  def happy?
    if @happiness > 7
      true 
    else 
      false 
    end 
  end
  
  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3 
    "♪ another one bites the dust ♫"
  end
  
  def happiness=(happiness)
    @happiness = happiness
    if @happiness >10 
      @happiness = 10 
    end
    if @happiness <0 
      @happiness = 0
    end
  end
  
  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10 
      @hygiene =10
    end 
    if @hygiene <0 
      @hygiene = 0 
    end
  end
  
  def call_friend(friend)
    friend.happiness = friend.happiness + 3
    self.happiness = self.happiness + 3 
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
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
    
    
    
    
