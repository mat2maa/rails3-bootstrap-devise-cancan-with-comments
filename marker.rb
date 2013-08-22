require "rubygems"
require "rmagick"

source = Magick::Image.read("app/assets/images/gmaps4rails/marker.png").first
overlay = Magick::Image.read("app/assets/images/logo.png").first
overlay = overlay.resize_to_fill(26, 26)
source.composite!(overlay, 8, 8, Magick::OverCompositeOp)
source.write("app/assets/images/gmaps4rails/ekosfera_marker.png")


# Or through the command line:
# system <<-COMMAND
# composite app/assets/images/logo.png app/assets/images/gmaps4rails/marker.png \
# 	-geometry 26x25+8+8 app/assets/images/gmaps4rails/ekosfera_marker.png
# COMMAND
