class SidekiqDemoController < ApplicationController
  def index
    render plain: "Hello World"
  end

  def json
    render content_type: 'application/json', status: 200, json: {:name => 'Edigleysson Silva', :email => 'edigleyssonsilva@gmail.com'}
  end
end
