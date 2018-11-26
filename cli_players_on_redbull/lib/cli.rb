require_relative './player'
require_relative './scraper'
require 'pry'

class Cli
  def call
    message = ["Welcome to the Redbull Team line up!",
        "To list all of the players by name, enter 'list by name'.",
        "To list all of the players by position, enter 'list by position'.",
        "To quit, type 'exit'.",
        "What would you like to do?"]
    message.each{|phrase| puts phrase}
    input = gets
    while input != "exit"
      if input == "list by name"
        list_name
      elsif input == "list by position"
        list_position
      else
        nil
      end
    end
  end

  def list_name
    Player.all.each_with_index{|player, i| puts "#{i+1}. #{player.name}, plays #{player.position}"}
    #binding.pry
  end
  def list_position
  end
end

Cli.new.call
