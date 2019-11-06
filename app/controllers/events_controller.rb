class EventsController < ApplicationController
  def index
  end

  def show
    @my_event = Event.find(params[:id])
  end

  def create
    e = Event.new
    e.id = Event.last.id + 1
    e.title = params[:title]
    e.start_date = params[:date] # À modifier
    e.duration = params[:duration]
    e.description = params[:description]
    e.price = params[:price]
    e.location = params[:location]
    e.save
  end
end

=begin
  date_string = Date.strptime(params[:time], "%d/%m/%Y").to_s
  time_string = params[:time].to_s
  e.start_date = Time.parse("#{date_string} #{time_string}")
=end