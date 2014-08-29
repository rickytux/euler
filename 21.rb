 text = File.open('names.txt').read
 names = []
 text.each_line.map { |line| names<<line.split(",") }
 puts names.length