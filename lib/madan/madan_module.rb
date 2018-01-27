require 'madan/application'

module Madan
  class << self
    def application
      @application = Madan::Application.new
    end
  end
end