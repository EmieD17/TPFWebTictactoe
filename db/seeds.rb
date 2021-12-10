# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


paul = User.create!(email: "paul@tremblay.com", password:'123456')
george = User.create!(email: "george@germain.com", password:'123456')
raph = User.create!(email: "raph@bergeron.com", password:'123456')
patate = User.create!(email: "patate@grecques.com", password:'123456')

myGames = Game.create!([
    {creator_id: paul.id, opponent_id:george.id, winner_id: paul.id, game_data: '[["X","O","X"],["X","","O"],["X","","O"]]'},
    {creator_id: paul.id, opponent_id:george.id, winner_id: george.id, game_data: '[["","O","X"],["X","O","O"],["X","O","X"]]'},
    {creator_id: paul.id, opponent_id:raph.id, winner_id: raph.id, game_data: '[["","O","X"],["X","O","O"],["X","O","X"]]'},
    {creator_id: george.id, opponent_id:patate.id, winner_id: patate.id,  game_data: '[["X","O","X"],["X","","O"],["X","","O"]]'},
    {creator_id: george.id, opponent_id:patate.id, winner_id: patate.id,  game_data: '[["X","O","X"],["X","","O"],["X","","O"]]'},
    {creator_id: george.id, opponent_id:paul.id, player_turn_id: paul.id, game_data: '[["X","O","X"],["X","","O"],["","","O"]]'},
    {creator_id: raph.id, opponent_id:patate.id, winner_id: raph.id , game_data: '[["X","O","X"],["X","","O"],["X","","O"]]'},
    {creator_id: patate.id, opponent_id:raph.id, player_turn_id: raph.id, game_data: '[["X","O","X"],["X","","O"],["X","","O"]]'},
    {creator_id: patate.id, opponent_id:george.id, winner_id: george.id,  game_data: '[["X","O","X"],["X","","O"],["X","","O"]]'}
])
