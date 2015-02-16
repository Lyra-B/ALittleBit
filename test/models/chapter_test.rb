require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Chapter Model" do
  it 'can construct a new instance' do
    @chapter = Chapter.new
    refute_nil @chapter
  end
end
