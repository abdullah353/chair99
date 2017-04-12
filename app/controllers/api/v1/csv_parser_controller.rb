class Api::V1::CsvParserController < ApplicationController

  # Ignoring validation token for API, It should be replaced with 
  # Token based or some Authentication pattern.
  skip_before_filter :verify_authenticity_token 

  def filter_first_name
    first_names = []
    CSV.parse(request.raw_post).each do |id, first_name, last_name|
      first_names << first_name
    end

    msg = check_name_occurance(first_names)
    render :json => msg
  end

  def read_csv
    names = []
    csv_file = params[:csv_file]
    CSV.read(csv_file.path).each do |name|
      names << name[0]
    end

    @scored_names = check_name_occurance(names)
    render template: "portal/show_table"
  end

  # Function to count occurence of each names, and eliminates if
  # count is equal to or less than 1
  def check_name_occurance(first_names)
    temp_hash = Hash.new(0)
    first_names.each { |v| temp_hash.store(v, temp_hash[v]+1) }

    #Remove Duplicate Entry
    temp_hash.each do |name, score|
      if score <= 1
        temp_hash.delete(name)
      end
    end
  end

end
