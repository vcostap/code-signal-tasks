def addBorder(picture)
    picture_border = picture[0].length + 2
	picture.each { |line| line.insert(0, "*"); line.insert(-1, "*"); }
    picture.insert(0, "*"*picture_border)
    picture.insert(-1, "*"*picture_border)
	picture
end