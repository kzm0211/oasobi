module Oasobi
  class CLI < Thor
    desc "install", "Install packages with list.yaml"
    def install
      packagelist = YAML.load_file("lib/oasobi/packages/list.yaml")
      packagelist['packages'].each do | list |
        system("brew install #{list}")
      end
    end
  end
end
