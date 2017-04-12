require 'test_helper'

class CsvParserControllerTest < ActionDispatch::IntegrationTest
  test "should get filter_name" do
    get csv_parser_filter_name_url
    assert_response :success
  end

end
