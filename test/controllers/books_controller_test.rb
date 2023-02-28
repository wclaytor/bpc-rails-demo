require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  describe "create" do

    describe "when all parameters are specified correctly" do
      it "should create book" do
        assert_difference("Book.count") do
          post books_url, params: { book: { author_id: @book.author_id, publication_year: @book.publication_year, summary: @book.summary, title: @book.title } }
        end

        assert_redirected_to book_url(Book.last)
      end
    end

    describe "when all parameters are not specified correctly" do
      it "should not create book" do
        skip "not yet implemented"
      end
    end

  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  describe "update" do
    
    describe "when all parameters are specified correctly" do
      test "should update book" do
        patch book_url(@book), params: { book: { author_id: @book.author_id, publication_year: @book.publication_year, summary: @book.summary, title: @book.title } }
        assert_redirected_to book_url(@book)
      end
    end

    describe "when all parameters are not specified correctly" do
      it "should not update book" do
        skip "not yet implemented"
      end
    end

  end

  describe "destroy" do
    it "should destroy book" do
      assert_difference("Book.count", -1) do
        delete book_url(@book)
      end
  
      assert_redirected_to books_url
    end
  end

end
