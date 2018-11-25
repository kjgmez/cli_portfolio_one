#require_relative '../config/environment.rb'
require_relative './player'
require_relative './scraper'
class Cli
  def call
    input = ""
    message = ["Welcome to the Redbull Team line up!",
        "To list all of the players by name, enter 'list by name'.",
        "To list all of the players by position, enter 'list by position'.",
        "To quit, type 'exit'.",
        "What would you like to do?"]
    message.each{|phrase| puts phrase}
    while input != "exit"
      input = gets
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
    Player.all.each_with_index{|player, i| puts "#{i}. #{player.name}, plays #{player.position}"}
  end
  def list_position
  end
end

Cli.new.call
