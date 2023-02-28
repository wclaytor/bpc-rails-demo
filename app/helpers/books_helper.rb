module BooksHelper # rubocop:todo Style/Documentation
  def book_image_path(book)
    default_path = "book.png"
    path = book.image_path
    if !path.nil? && asset_exist?(path)
      path
    else
      default_path
    end
  end
end
