class HomeController < ApplicationController
  require 'mlb_stats_api'
  require 'json'


  def index
    # Establish connection to stats api
    @client = MLBStatsAPI::Client.new

    # Get the list of schedule of games for date range of only today
    @schedule = @client.schedule({sport_id: 1, date: Date.today})

    # Pull out games from dates[0] (today)
    @games = @schedule['dates'][0]['games']

    # Array to hold game primary keys
    @gamesPK = []

    @games.each do |game|
      @gamesPK.push(game['gamePk'])
    end

    # Array to hold line scores
    @linescores = []

    @gamesPK.each do |key|
      @linescores.push(@client.linescore(key))
    end
  end

end
