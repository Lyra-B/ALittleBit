require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Book Model" do
  before do
    @book = Book.new(:title => "War & Piece", :isbn=> "1234567889")
    @book.chapters << Chapter.new(:title => "Chapter 1")
    @book.chapters.build(:title => "Chapter 2")
    @book.save!
  end
  it 'can construct a new instance' do
    Book.count.must_equal 1
    Chapter.count.must_equal 2
    # refute_nil @book
  end

  it "should allocate the position automatically" do
    @book.reload
    @book.chapters.first.position.must_equal 0
    @book.chapters.second.position.must_equal 1
  end

end
