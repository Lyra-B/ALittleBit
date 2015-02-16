require_relative '../test_config'

describe "Books Controller" do
  it "should show a new form to fill a book in" do
    get '/new'
    last_response.status.must_equal 200
  end

  describe "Creating a book" do
    before do
      params = {
        book:{
          title: "War & Peace",
          isbn: '1234567889'
        }
      }
      post '/books', params
    end

    it "should create a book" do
      Book.count.must_equal 1
    end

    it "should set the title and isbn" do
      book = Book.first
      book.title.must_equal "War & Peace"
      book.isbn.must_equal '1234567889'
    end
  end
end