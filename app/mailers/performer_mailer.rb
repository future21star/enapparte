class PerformerMailer < ApplicationMailer

  def booking_cancelled booking
    @booking = booking
    mail to: booking.show.user.email, subject: default_i18n_subject
  end

end