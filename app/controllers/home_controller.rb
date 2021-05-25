class HomeController < ApplicationController
  require 'mlb_stats_api'

  def index
    # Establish connection to stats api
    @client = MLBStatsAPI::Client.new

    # Get the hash of schedule of games for date range of only today
    @schedule = @client.schedule({sport_id: 1, date: Date.today})

    # Pull out games from dates[0] (today)
    @games_hash = @schedule['dates'][0]['games']

    # Array to hold game primary keys
    @games = []

    # Array to hold game date/start time
    @game_dates = []

    # Push primary key of games into array to use for API Queries
    # Also push datetime of game for pregame/ingame status
    @games_hash.each do |game|
      @games.push(game['gamePk'])
      @game_dates.push(game['gameDate'])
    end
  end

end
