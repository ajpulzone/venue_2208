class Venue
  attr_reader :name, :capacity, :patrons, :yelled_at_patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @yelled_at_patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    patrons.each do |patron|
        yelled_at_patrons << patron.upcase
    end
    return yelled_at_patrons ##Might have to rework this moving forward, but works for now.
  end

  def over_capacity?
    if patrons.length <= 4
      false
    else true
    end
  end

  def kick_out
      while patrons.length > 4
        patrons.pop #while patrons.length >4
      end
      # until patrons.length
  end

end
