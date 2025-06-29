class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all

    render json: @attendees
  end

  def show
    @attendee = Attendee.find(params[:id])

    render json: @attendee
  end

  def create
    @attendee = Attendee.create(
    name: params[:name],
    email: params[:email]
    )

    if @attendee.valid?
    render json: { message: "attendee Created!" }
    else
    render json: { error: "@attendee.errors.full_messages" }
    end
  end

  def update
    @attendee = Attendee.find(params[:id])
    @attendee.update(
    name: params[:name] || @attendee.name,
    email: params[:email] || @attendee.email
    )

    if @attendee.valid?
    render json: { message: "attendee Updated!" }
    else
    render json: { error: @attendee.errors.full_messages }
    end
  end

  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy

    render json: { message: "attendee Deleted!" }
  end
end
