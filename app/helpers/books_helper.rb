module BooksHelper # rubocop:todo Style/Documentation
  def book_image_path(book)
    if !book.image_path.nil? && book.image_path != ""
      book.image_path
    else
      "book.png"
    end
  end
end
