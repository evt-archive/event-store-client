require_relative './bench_init'

module Fixtures
  StreamName = EventStore::Client::StreamName
end

context "Stream Name" do
  stream_name = Fixtures::StreamName.stream_name 'someCategory', 'some_id'

  test "Composes the stream name from the category name and an ID" do
    assert(stream_name == 'someCategory-some_id')
  end
end

context "Random Category Name" do
  stream_name = Fixtures::StreamName.random_category_name('someCategory')

  test "Adds a randomized suffix to the category name" do
    assert(stream_name.length > 'someCategory'.length)
    assert(stream_name.start_with? 'someCategory')
  end
end

context "Random Stream Name" do
  stream_name = Fixtures::StreamName.stream_name 'someCategory', 'some_id', random: true

  test "Composes the stream name from the randomized category name and an ID" do
    assert(stream_name.length > 'someCategory-some_id'.length)
    assert(stream_name.start_with? 'someCategory')
    assert(stream_name.end_with? 'some_id')
  end
end

context "Category Stream Name" do
  test "Composes the category stream name from the category name and the reserve category stream prefix" do
    category_stream_name = Fixtures::StreamName.category_stream_name 'someCategory'
    assert(category_stream_name == '$ce-someCategory')
  end
end

context "Stream ID" do
  test "Is the UUID portion of a full stream name" do
    id = Identifier::UUID.random
    stream_name = "someStream-#{id}"

    stream_id = Fixtures::StreamName.get_id stream_name
    assert(stream_id == id)
  end

  test "Is nil if there is no type 4 UUID in the stream name" do
    stream_id = Fixtures::StreamName.get_id 'someStream'
    assert(stream_id.nil?)
  end
end
