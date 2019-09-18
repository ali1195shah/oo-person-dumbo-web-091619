# your code goes here
require 'pry'
# your code goes here

class Person

    attr_reader :name
    attr_writer
    attr_accessor :bank_account, :happiness, :hygiene, :happy

    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
      @happy = happy?
    end
    
    # def clean
    #   @clean
    # end
    
    # krusty.happiness = 10
    
    def happiness=(points)
      @happiness = points
      if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      end
    end
    
    def hygiene=(points)
      @hygiene = points
      if @hygiene > 10
        @hygiene = 10
      elsif @hygiene < 0
        @hygiene = 0
      end
    end
    
    def happy?
      if @happiness > 7
        return true
      else
        return false
      end
    end
    
    def clean?
      if @hygiene > 7
        return true
      else
        return false
      end
    end
    
    def get_paid(salary)
      @bank_account += salary
      return "all about the benjamins"
    end
    
    def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
      self.hygiene -= 3 
      self.happiness += 2
      return "♪ another one bites the dust ♫"
    end
    
    def call_friend(person)
      self.happiness += 3
      person.happiness += 3
      return "Hi #{person.name}! It's #{self.person} How are you?"
    end
    
    
    
    # def word_out
    #   @word_out
    # end
    
    # def call_friend
    #   @call_friend
    # end
    
    # def start_conversation
    #   @start_conversation
    # end

end

# binding.pry
# 0