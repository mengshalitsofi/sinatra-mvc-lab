require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @text = params[:user_phrase]
        @latinizer = PigLatinizer.new
        erb :latinized_result
    end

end