require 'fileutils'

unless File.directory?('/Applications/World of Warcraft/Interface/AddOns/Bulkie/')
  FileUtils::mkdir('/Applications/World of Warcraft/Interface/AddOns/Bulkie')
end

Dir.glob('./*').each do |f|
  if (f.end_with?('.toc') || f.end_with?('.lua') || f.end_with?('.xml'))
    FileUtils::copy(f, '/Applications/World of Warcraft/Interface/AddOns/Bulkie/', :verbose => true)
  end
end
