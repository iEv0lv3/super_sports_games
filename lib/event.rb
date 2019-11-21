class Event
  attr_reader :name, :ages

  def initialize(event, ages)
    @event = event
    @ages = ages
  end
end
