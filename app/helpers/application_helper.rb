module ApplicationHelper

  def copyright_generator
    DiospilleViewTool::Renderer.copyright 'ApiciusEats', 'All rights reserved'
  end

  def nav_items
    [
      {
        url: chefs_path,
        title: 'Chefs'
      },
      {
        url: recipes_path,
        title: 'Recipes'
      }
    ]

  end

  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def gravatar_for(user, options = { size: 60 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?d=identicon"
    image_tag(gravatar_url, alt: user.chefname, class: "rounded-circle")
  end

end
