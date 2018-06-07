require "helper"
require "fluent/plugin/formatter_easy_tsv.rb"

class EasyTsvFormatterTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Formatter.new(Fluent::Plugin::EasyTsvFormatter).configure(conf)
  end
end
