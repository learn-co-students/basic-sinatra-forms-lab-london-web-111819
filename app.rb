require 'sinatra/base'

class App < Sinatra::Base

    get ('/newteam'){

        erb :newteam
    }

    post ('/team'){
        @name= params[:name]
        @coach= params[:coach]
        @p_guard= params[:pg]
        @s_guard= params[:sg]
        @s_forward= params[:sf]
        @p_forward= params[:pf]
        @center= params[:c]
       
        erb :team
    }


end
