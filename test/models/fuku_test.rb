require "test_helper"

class FukuTest < ActiveSupport::TestCase
  test "名前が未入力の場合は無効になる" do
    fuku = Fuku.new(name: "")

    assert_not fuku.valid?
    assert_includes fuku.errors[:name], "を入力してください"
  end
end
