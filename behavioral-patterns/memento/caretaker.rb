# frozen_string_literal: true

class Caretaker
  def initialize(originator)
    @mementos = []
    @originator = originator
  end

  def backup
    puts "\nCaretaker: Saving Originator's state..."
    @mementos << @originator.save
  end

  def undo
    return if @mementos.empty?

    memento = @mementos.pop
    puts "Caretaker: Restoring state to :#{memento.name}"

    begin
      @originator.restore(memento)
    rescue StandardError
      undo
    end
  end

  def show_history
    puts "\nCaretaker: Here's the list of mementos:"
    @mementos.each { |memento| puts memento.name }
  end
end
