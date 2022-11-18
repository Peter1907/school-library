#!/usr/bin/env ruby

require './app'

class Interface
  def interface
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end
end

class Main
  def initialize
    @app = App.new
    @interface = Interface.new
  end

  def handle_selection
    option = gets.chomp.to_i
    selection = {
      1 => 'list_all_books',
      2 => 'list_all_people',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_all_rentals_for_person_id'
    }
    case option
    when 1..6
      @app.send(selection[option])
      run
    when 7
      puts 'Thank you for using this app!'
    else
      puts 'That is not a valid option, Please enter a number between 1 and 7'
      run
    end
  end

  def run
    @interface.interface
    handle_selection
  end

  private :handle_selection
end

Main.new.run
