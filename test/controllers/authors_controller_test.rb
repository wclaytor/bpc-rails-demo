require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  TEST_NAME = "Test Author".freeze
  TEST_BIO = "Test Author was born in a small town...".freeze

  setup do
    @author = authors(:one)
    @author_with_books = authors(:one)
    @author_without_books = authors(:three)
  end

  test "should get index" do
    get authors_url
    assert_response :success
  end

  test "should get new" do
    get new_author_url
    assert_response :success
  end

  describe "create" do
    describe "when all parameters are specified correctly" do
      it "should create the author" do
        assert_difference("Author.count") do
          post authors_url, params: { author: { name: TEST_NAME, bio: TEST_BIO } }
        end
      end
    end

    describe "when all parameters are not specified correctly" do
      it "should not create the author" do
        skip "not yet implemented"

        assert_no_difference("Author.count") do
          post authors_url, params: { author: { name: "" } }
        end

        # TODO: extract?
        # assert_redirected_to "/"
      end
    end
  end

  test "should show author" do
    get author_url(@author)
    assert_response :success
  end

  test "should get edit" do
    get edit_author_url(@author)
    assert_response :success
  end

  describe "update" do
    describe "when all parameters are specified correctly" do
      it "should update the author" do
        patch author_url(@author), params: { author: { name: @author.name, bio: @author.bio } }
        assert_redirected_to author_url(@author)
      end
    end

    describe "when all parameters are not specified correctly" do
      it "should not update the author" do
        skip "not yet implemented"
      end
    end
  end

  describe "destroy" do
    describe "when an author does not have books" do
      it "should destroy the author" do
        assert_difference("Author.count", -1) do
          delete author_url(@author_without_books)
        end

        # TODO: extract?
        assert_redirected_to authors_url
      end
    end

    describe "when an author has books" do
      it "should raise an error and not destroy the author" do
        assert_no_difference("Author.count") do
          assert_raises ActiveRecord::InvalidForeignKey do
            delete author_url(@author_with_books)
          end
        end

        # TODO: extract?
        assert_redirected_to "/"
      end
    end
  end
end
