require 'bundler/setup'

require 'commander'
require 'madan/file_parser'
require 'tty-markdown'
require 'tty-pager'

module Madan
  class Application
    include Commander::Methods

    def run
      program :name, "Madan"
      program :version, Madan::VERSION
      program :description, "Preview Markdown File In Terminal"

      command :present do |c|
        c.syntax = 'madan present FILE'
        c.description = 'present markdown file'
        c.action do |args, options|
          file_arg = args.first
          if File.directory?(file_arg) || File.file?(file_arg)
            file_parser = Madan::FileParser.new(file_arg)
            str = file_parser.parse
            parsed = TTY::Markdown.parse(str)
            pager = TTY::Pager.new
            pager.page(parsed)
          end
        end
      end
      alias_command :p, :present
      alias_command :preview, :present
      run!
    end
  end
end
