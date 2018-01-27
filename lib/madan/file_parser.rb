require 'pry'
module Madan
  class FileParser
    ALLOWED_EXTENSIONS = %w(.md .markdown)

    def initialize(path)
      @path = path
      @md = Madan::MdUtils.new
    end

    def parse
      contents = ""
      if File.file?(@path)
        contents = File.read(@path)
      end
      contents
    end
  end
end