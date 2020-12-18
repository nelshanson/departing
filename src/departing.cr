require "kemal"

module Departing
  
  get "/:delayed" do |env|
    delayed = env.params.url["delayed"]
    render "src/views/bad_news.ecr"
  end

end

Kemal.config.port = ENV["PORT"]?.try(&.to_i) || 3000
Kemal.run