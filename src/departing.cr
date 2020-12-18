require "kemal"

module Departing
  
  get "/:delayed" do |env|
    delayed = env.params.url["delayed"]
    render "src/views/bad_news.ecr"
  end

end

Kemal.run ENV["PORT"]