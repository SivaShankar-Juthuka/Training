=begin
Write a Program that takes Date/Time as an input (in DD-MM-YYYY HH:MM format) and displays the same in the following formats:
Input: 08-05-2024 11:26
Output:
Format #1: Wed, 8 May, 2024
Format #2: 05/08/2024
Format #3: 11:26 AM, Wednesday 08 May, 2024
Please use functions provided by Ruby Date,Time and DateTime classes here
=end

=begin
Date (Year, Month, Day):
  %Y - Year with century (can be negative, 4 digits at least)
          -0001, 0000, 1995, 2009, 14292, etc.
  %C - year / 100 (round down.  20 in 2009)
  %y - year % 100 (00..99)

  %m - Month of the year, zero-padded (01..12)
          %_m  blank-padded ( 1..12)
          %-m  no-padded (1..12)
  %B - The full month name (``January'')
          %^B  uppercased (``JANUARY'')
  %b - The abbreviated month name (``Jan'')
          %^b  uppercased (``JAN'')
  %h - Equivalent to %b

  %d - Day of the month, zero-padded (01..31)
          %-d  no-padded (1..31)
  %e - Day of the month, blank-padded ( 1..31)

  %j - Day of the year (001..366)

Time (Hour, Minute, Second, Subsecond):
  %H - Hour of the day, 24-hour clock, zero-padded (00..23)
  %k - Hour of the day, 24-hour clock, blank-padded ( 0..23)
  %I - Hour of the day, 12-hour clock, zero-padded (01..12)
  %l - Hour of the day, 12-hour clock, blank-padded ( 1..12)
  %P - Meridian indicator, lowercase (``am'' or ``pm'')
  %p - Meridian indicator, uppercase (``AM'' or ``PM'')

  %M - Minute of the hour (00..59)

  %S - Second of the minute (00..60)

  %L - Millisecond of the second (000..999)
  %N - Fractional seconds digits, default is 9 digits (nanosecond)
          %3N  millisecond (3 digits)   %15N femtosecond (15 digits)
          %6N  microsecond (6 digits)   %18N attosecond  (18 digits)
          %9N  nanosecond  (9 digits)   %21N zeptosecond (21 digits)
          %12N picosecond (12 digits)   %24N yoctosecond (24 digits)

Weekday:
  %A - The full weekday name (``Sunday'')
          %^A  uppercased (``SUNDAY'')
  %a - The abbreviated name (``Sun'')
          %^a  uppercased (``SUN'')
  %u - Day of the week (Monday is 1, 1..7)
  %w - Day of the week (Sunday is 0, 0..6)


Literal string:
  %n - Newline character (\n)
  %t - Tab character (\t)
  %% - Literal ``%'' character
=end
require 'date'

def format_datetime(input)
    date_time = Time.parse(input)
    
    puts "Format #1: #{date_time.strftime("%a, %d %b, %Y")}"
    puts "Format #2: #{date_time.strftime("%m/%d/%Y")}"
    puts "Format #3: #{date_time.strftime("%l:%M %p, %A %d %b, %Y")}"
end

format_datetime("08-05-2024 11:26")
# Output will be displayed below this line -