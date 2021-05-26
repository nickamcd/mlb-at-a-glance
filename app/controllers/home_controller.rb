class HomeController < ApplicationController
  require 'mlb_stats_api'
  require 'timezone_local'

  def index
    # Establish connection to stats api
    @client = MLBStatsAPI::Client.new

    # Get the hash of schedule of games for date range of only today
    @schedule = @client.schedule({sport_id: 1, date: Date.today})

    # Pull out games from dates[0] (today)
    @games = @schedule['dates'][0]['games']

    # Array to hold game primary keys
    @game_keys = []
    # Array to hold game date/start time
    @game_dates = []
    # Array to hold pregame/postgame status if game is not currently
    # being played
    @game_statuses = []
    # Array to hold teams participarting in
    @game_teams = []

    #Iterate over games hash and pull out neccesary info
    @games.each do |game|
      @game_keys.push(game['gamePk'])
      @game_dates.push(game['gameDate'])
      @game_statuses.push(game['status']['abstractGameState'])
      @game_teams.push(game['teams'])
    end
  end

end
