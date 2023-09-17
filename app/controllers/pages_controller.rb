class PagesController < ApplicationController
  def home
  end

  def about
    #@portal_session = current_user.payment_processor.billing_portal
  end

  def faq
  end

  def dashboard
    @booking_types = current_user.booking_types
    @bookings = Booking.where(booking_type_id: current_user.booking_type_ids)
  end

end
