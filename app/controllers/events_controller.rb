class EventsController < ApplicationController
  def index
    @events = Event.all

    render json: @events
  end

  def show
    @event = Event.find(params[:id])

    render json: @event
  end

  def create
    @event = Event.create(
    name: params[:name],
    location: params[:location],
    date: params[:date]
    )

    if @event.valid?
    render json: { message: "Event Created!" }
    else
    render json: { error: "@event.errors.full_messages" }
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update(
    name: params[:name] || @event.name,
    location: params[:location] || @event.location,
    date: params[:date] || !event.date
    )

    if @event.valid?
    render json: { message: "Event Updated!" }
    else
    render json: { error: @event.errors.full_messages }
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    render json: { message: "Event Deleted!" }
  end
end
