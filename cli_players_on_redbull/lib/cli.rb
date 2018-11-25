require_relative '../config/environment.rb'

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
  end
  def list_position
  end
