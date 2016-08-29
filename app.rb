require "date"

class App
  def run
    num_days.times do |i|
      date = Date.today - i
      puts "#{day_name(date)} #{date.day} #{month(date)}"
      puts "-  \n-  \n-  \n\n"
    end
  end

  def num_days
    (ARGV[0] || 1).to_i
  end

  def month(date)
    Date::ABBR_MONTHNAMES[date.month].downcase
  end

  def day_name(date)
    Date::ABBR_DAYNAMES[date.wday].downcase
  end

  def day(date)
    current.day
  end
end

App.new.run
