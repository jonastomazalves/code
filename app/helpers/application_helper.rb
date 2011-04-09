module ApplicationHelper
  # Formats dates into latin pattern.
  def date_format(date)
  	date = date.to_s()
    return date[8..9]+"/"+date[5..6]+"/"+date[0..3]
  end
end
