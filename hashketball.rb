# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(player_name)
game_hash.each do |home_away, team_info|
       team_info[:players].each do |player_description| 
         if player_description[:player_name] == player_name
           return player_description[:points]
           
         binding.pry
    end      
  end
 end
end

def shoe_size(player_name)
  game_hash.each do |home_away, team_info|
   team_info[:players].each do |player_stats|
    if player_stats[:player_name] == player_name
      return player_stats[:shoe]
    binding.pry
    end
   end
  end
end

def team_colors(team_name)
  game_hash.each do |home_away, team_info|
    if team_info[:team_name] == team_name
      return team_info[:colors]
    
  end
  #binding.pry 
 end
end


def team_names
  team_names_array = []
  game_hash.each do |home_away, team_info|
    team_info.each do|team_name, name|
      team_names_array << team_info[:team_name]
    #binding.pry 
  end
 end 
 team_names_array.uniq 
end 



def player_numbers(team_n)
  jersey_numbers = []
   game_hash.each do |home_away, team_info|
   team_info.each do |team_name, descriptions|
        if team_info[:team_name] == team_n 
             team_info[:players].each do |stats|
             jersey_numbers << stats[:number]
           #binding.pry 
           end
       #binding.pry
     end 
   #binding.pry   
   end   
  end
 jersey_numbers.uniq
end

def player_stats(team_n)
  game_hash.each do |home_away, team_info|
  team_info[:players] do |player_stats|
   binding.pry 
  end
 end 
end
