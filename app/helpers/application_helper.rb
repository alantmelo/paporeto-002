module ApplicationHelper
  def today
    localize Date.today, format: :today
  end

  def time_to_read(text)
    time = text.split.size / 180.0
    distance_of_time_in_words(time.minutes)
  end

  def nav_status(controller)
    if params[:controller] == controller
      'active'
    end
  end

  def maybe_friday
    if Date.today.friday?
      'Uhuuu!!!'
    else
      'É quase sexta'
    end
  end
end
