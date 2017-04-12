require 'test_helper'

class CsvParserControllerTest < ActionDispatch::IntegrationTest
  test "should display names with occurances" do
    post csv_parser_filter_first_name_url, params: {'RAW_POST_DATA' => '1,a,b\n,2,a,c'}
    assert_response :success
  end

end
