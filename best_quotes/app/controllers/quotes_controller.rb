class QuotesController < ::Rulers::Controller
  def a_quote
    render :a_quote, :noun => :winking
   # "Hi there Mr App Thing" + " some other stuff" + "\n<pre>\n#{env}\n</pre>"
  end

  def exception
    raise "It's a bad error kidz!!"
  end

  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand faces",
      "attribution" => "Me"
    }
    m = FileModel.create(attrs)
    render :quote, :obj => m
  end

  def show
    quote = FileModel.find(params["id"])
    ua = request.user_agent
    render_response :quote, :obj => quote, :ua => ua
  end

  #So this comment should restart the server, right ? Due to the rerun gem....
end

