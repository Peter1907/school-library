#!/usr/bin/env ruby

require './app'

class Main
  def initialize
    @app = App.new
  end

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

  def run
    option = gets.chomp
    case option
    when '1'
      @app.list_all_books
      puts
      interface
      run
    when '2'
      @app.list_all_people
      puts
      interface
      run
    when '3'
      @app.create_person
      puts
      interface
      run
    when '4'
      @app.create_book
      puts
      interface
      run
    when '5'
      @app.create_rental
      puts
      interface
      run
    when '6'
      @app.list_all_rentals_for_person_id
      puts
      interface
      run
    when '7'
      puts 'Thank you for using this app!'
    else
      puts 'That is not a valid input, Enter a number between 1 and 7'
      puts
      interface
      run
    end
  end
  private :interface, :run
end

main = Main.new
main.interface
main.run
