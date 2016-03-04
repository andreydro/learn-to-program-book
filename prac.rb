class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10  # It`s` full
    @stuffInIntestine = 0 # It doesn`t need to walk

    puts @name + ' was born.'
  end

  def feed
    puts 'You are feeding ' + @name + '(a).'
    @stuffInIntestine = 0
    passageOfTime
  end

  def walk
    puts 'You are walking with ' + @name + '(a)'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You are putting '+ @name + '  (a) to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + 'snoring, filling the room with smoke'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' waking up slowly'
    end
  end

  def toss
    puts 'You are tossing up ' + @name + '(a) in air'
    puts 'It`s giggling, burning out your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You are gently swinging ' + @name + '(a)'
    @asleep = true
    puts 'Its fast dozing off... '
    passageOfTime
    if @asleep
      @asleep = true
      puts '...but wakeing up, when stopped swinging'
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly = @stuffInBelly - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts 'It`s waking up!'
      end
      puts @name + 'hungry! Taken to the extreme, eats YOU!'
      exit
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Oooppss! ' + @name + 'did not good...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'It`s suddenly waking up!'
      end
      puts 'In belly of ' + @name + '(a) hums...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'it`s suddenly waking up!'
      end
      puts @name + ' jumps, because wants to the toilet...'
    end
  end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed