require_relative './player'
require_relative './scraper'
require 'pry'

class Cli
  def call
    message = ["Welcome to the Redbull Team line up!",
        "Type 'list' to see all the players and their positions",
        "To quit, type 'exit'.",
        "What would you like to do?"]
    message.each{|phrase| puts phrase}
    input = gets
    case input
    when "list"
      list_name
    when "exit"
      puts 'Exiting'
    end
  end

  def list_name
    Player.all.each_with_index{|player, i| puts "#{i+1}. #{player.name}, plays #{player.position}"}
  end
end

Cli.new.call
