class QuotesController < Rulers::Controller
  def a_quote
    "Hi there Mr App Thing" + " some other stuff" + "\n<pre>\n#{env}\n</pre>"
  end

  def exception
    raise "It's a bad error kidz!!"
  end

  #So this comment should restart the server, right ? Due to the rerun gem....
end

