require "lol/cli/version"
require "lol/cli/greeter"

module Lol
  module CLI

    class Base < Thor

      desc "version", "prints version"
      def version
        puts VERSION
      end

      # delegate to another module with own commands
      desc "greeter COMMAND", "Greetings module"
      subcommand "greeter", Lol::CLI::Greeter
    end
  end
end
