class CsvParserController < ApplicationController
  def filter_name
    msg = { :status => "ok", :message => "Success!"}
    render :json => msg
  end
end
