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
    option = gets.chomp
    case option
    when '1'
      @app.list_all_books
      run
    when '2'
      @app.list_all_people
      run
    when '3'
      @app.create_person
      run
    when '4'
      @app.create_book
      run
    when '5'
      @app.create_rental
      run
    when '6'
      @app.list_all_rentals_for_person_id
      run
    when '7'
      puts 'Thank you for using this app!'
    end
  end

  def run
    @interface.interface
    handle_selection
  end

  private :handle_selection
end

Main.new.run
