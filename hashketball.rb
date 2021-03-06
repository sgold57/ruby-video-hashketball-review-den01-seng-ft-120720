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

def find_hooper(name)
  game_hash.each do |squad, specs|
    specs[:players].each do |hooper, stats|
      if hooper[:player_name] == name
        return hooper
      end
    end
  end
end

def num_points_scored(player)
  find_hooper(player)[:points]
end

def shoe_size(player)
  find_hooper(player)[:shoe]
end

def team_colors(team)
  game_hash.each do |squad, specs|
    if specs[:team_name] == team
      return specs[:colors]
    end
  end
end

def team_names
  names_array = []
  game_hash.each do |squad, specs|
    names_array.push(specs[:team_name])
  end
  names_array
end

def player_numbers(team)
  numbers_array = []
  game_hash.each do |squad, specs|
    if specs[:team_name] == team
      specs[:players].each do |hooper, stats|
        numbers_array.push(hooper[:number])
      end
    end
  end
  numbers_array
end

def player_stats(name)
  find_hooper(name)
end

def big_shoe_rebounds
  bigfoot = ""
  largest_shoe = 0
  game_hash.each do |squad, specs|
    specs[:players].each do |hooper, stats|
      if hooper[:shoe] > largest_shoe
        largest_shoe = hooper[:shoe]
        bigfoot = hooper[:player_name]
      end
    end
  end
  find_hooper(bigfoot)[:rebounds]
end