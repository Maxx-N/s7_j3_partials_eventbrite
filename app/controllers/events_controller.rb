class EventsController < ApplicationController
  def index
  end

  def show
    @my_event = Event.find(params[:id])
  end
end
