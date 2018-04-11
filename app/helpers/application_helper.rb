module ApplicationHelper
  def copyright_generator
    DiospilleViewTool::Renderer.copyright 'ApiciusEats', 'All rights reserved'
  end
end
