module MainHelper

  def rounding(number)
    ((number/1000000.to_f).round(1)).to_s.gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1 ")
  end

  def color_text_red_or_green_and_rounding(number)
    "<font color=#{ number <= 0 ? "'red'> " : "'green' >+"}#{rounding(number)} </font>".html_safe
    # if number <= 0
    #   "<font color='red'> #{rounding(number)} </font>".html_safe
    # else
    #   "<font color='green' >+ #{rounding(number)} </font>".html_safe
    # end
  end


  def color_text_red_or_green_for_percent(number)
    if (number < 0 and number > -100) or (number < -100)
      "<font color='red' >#{number}%</font>".html_safe
    elsif number > 0
      "<font color='green' >+#{number}%</font>".html_safe
    elsif number == -100
      "<font color='black' >#{0}%</font>".html_safe
    end

  end
end
