require 'sinatra/base'

class App < Sinatra::Base

    get '/reverse' do
        erb :reverse
      end
    
      post '/reverse' do
        original_string = params["string"]
        @reversed_string = original_string.reverse
        erb :reversed
      end
    
      get '/friends' do
        # Write your code here!
        @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
        erb :friends
      end

      get '/newteam' do
        erb :newteam
      end

      post '/team' do
        @team_params = params
        erb :team
      end


end
