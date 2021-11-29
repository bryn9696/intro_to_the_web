require "sinatra"
require "sinatra/reloader" if development?


get '/' do
  "hello!"
end

get '/secret' do
  "hi there!!"
end

get '/cat' do
  "<div style='border: 5px dashed red'>
  <img src = 'https://i.imgur.com/jFaSxym.png'>
  </div>"
end