base_folder = '/Users/james/Desktop'
search_pattern = '*.jpg'

exif = {}

`find #{base_folder} -name '#{search_pattern}'`.split("\n").each {|file|

  exif[file.strip] = `exiftool /Users/james/Desktop/james.psd`.split("\n").collect{|a| 
    [
     (array = a.split(':')).first.strip, 
     (array.shift && array).join(':').strip
    ]
  }
  
}