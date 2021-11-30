module ApplicationHelper
  def max_width
    "mw-xl"
  end

  def text_title
    if params["genre"] == "php"
      "PHP テキスト教材"
    else
      "Ruby/Rails テキスト教材"
    end
  end
end
