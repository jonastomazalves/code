module ApplicationHelper
  def date_format(date)
  	date = date.to_s()
    return date[8..10]+"/"+date[5..6]+"/"+date[0..3]
  end
end
