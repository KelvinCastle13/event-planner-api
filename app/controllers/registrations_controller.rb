class RegistrationsController < ApplicationController
  def index
    @registrations = Registration.all

    render json: @registrations
  end

  def show
    @registration = Registration.find(params[:id])

    render json: @registration
  end

  def create
    @registration = Registration.create(
    attendee_id: params[:attendee_id],
    event_id: params[:event_id]
    )

    if @registration.valid?
    render json: { message: "Registration Created!" }
    else
    render json: { error: "@registration.errors.full_messages" }
    end
  end

  def update
    @registration = Registration.find(params[:id])
    @registration.update(
    attendee_id: params[:attendee_id] || @registration.attendee_id,
    event_id: params[:event_id_id] || @registration.event_id
    )

    if @registration.valid?
      render json: { message: "registration Updated!" }
    else
      render json: { error: @registration.errors.full_messages }
    end
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    render json: { message: "registration Deleted!" }
  end
end
