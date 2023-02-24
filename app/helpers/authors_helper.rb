module AuthorsHelper # rubocop:todo Style/Documentation
  def author_image_path(author)
    if !author.image_path.nil? && author.image_path != ""
      author.image_path
    else
      "author.png"
    end
  end
end
