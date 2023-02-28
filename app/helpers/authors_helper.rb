module AuthorsHelper # rubocop:todo Style/Documentation

  def author_image_path(author)
    default_path = "author.png"
    path = author.image_path
    if !path.nil? && asset_exist?(path)
      path
    else
      default_path
    end
  end
  
end
