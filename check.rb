require 'mexbt'
require 'active_support/core_ext/numeric/time'

class Check
  include Mexbt

  p "Hello"
  p "How has the BTCMXN price changed over the last hour?   -   press 1"
  p "How has the BTCMXN price changed over the last day?   -   press 2"
  p "How has the BTCMXN price changed over the last week??   -   press 3"
  p "Quit?   -   press q"

  prompt = "> "

  while input = gets.chomp # loop while getting user input

    case input
    when "1"
      puts "last hour variation - between " + (Time.now - 1.hour).to_s + " to " + (Time.now).to_s
      trades = Mexbt.trades_by_date(from: (Time.now - 1.hour).to_i, to: Time.now.to_time.to_i)

      if (trades[:trades].size >= 2)
        variance = trades.first.px - trades.last.px
        puts variance.to_s + "%"
      else
        puts "0%"
      end
    when "2"
      puts "last day variation - between " + (Time.now - 1.day).to_s + " to " + (Time.now).to_s

      trades = Mexbt.trades_by_date(from: (Time.now - 1.day).to_i, to: Time.now.to_time.to_i)
      if (trades[:trades].size >= 2)
        variance = trades.first.px - trades.last.px
        puts variance.to_s + "%"
      else
        puts "0%"
      end
    when "3"

      puts "last week variation - between " + (Time.now - 1.week).to_s + " to " + (Time.now).to_s

      trades = Mexbt.trades_by_date(from: (Time.now - 1.week).to_i, to: Time.now.to_time.to_i)
      if (trades[:trades].size >= 2)
        variance = trades.first.px - trades.last.px
        puts variance.to_s + "%"
      else
        puts "0%"
      end
    when "quit"
      puts "Quiting"
      break # and again
    else
      puts "Please type either 1,2,3 or quit"
    end
    print prompt # print the prompt, so the user knows to re-enter input

  end

end
