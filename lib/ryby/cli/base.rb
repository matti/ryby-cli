require "ryby/cli/version"

module Ryby
  module CLI

    class Base < Thor

      desc "version", "prints version"
      def version
        puts VERSION
      end

      desc "init NAME VERSION", "initializes a new project"
      def init(name, version)
        require "fileutils"

        FileUtils.mkdir_p name
        File.write File.join(name, "Gemfile"), "source 'https://rubygems.org'\n"
        File.write File.join(name, ".ruby-version"), "#{version}\n"
        File.write File.join(name, ".ruby-gemset"), "#{name}\n"
      end
    end
  end
end
