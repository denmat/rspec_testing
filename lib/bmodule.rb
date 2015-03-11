require 'yaml'
require 'cmodule'
module Bmodule

  def nothing
  	'nothing'
  end

  def getit
  	g = Cmodule.new(nothing)
  	g.name
  end

  def print_tmp
    do_cmd
  end

  def config 
    @config ||= YAML.load_file('config.yaml')
  end

  private

  def do_cmd
    if can_do == 'nobody'
      system('ls -l /tmp')
    end
  end

  def can_do
    system('sudo -u nobody whoami')
  end
end