class EventsController < ApplicationController
  def index
    @events = CronofyService.read_events(current_user)
    @events
  end
end
