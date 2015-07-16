require 'sinatra'

get '/' do
  """
<h2>ENV</h2>
#{ENV.to_a.join('<br>')}
  """
end
