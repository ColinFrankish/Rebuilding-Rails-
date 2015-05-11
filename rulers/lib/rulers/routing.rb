
class RouteObject
  def initialize
    @rules = []
  end

  def match url, *args

  end

  def check_url url

  end
end

module Rulers
  class Application
    # def get_controller_and_action env
    #   # _, controller, action, after = env["PATH_INFO"].split('/',4)
    #   # controller = controller.capitalize
    #   # controller += "Controller"

    #   # [Object.const_get(controller), action]
    # end
    def route &block
      @route_obj ||= RouteObject.new
      !route_obj.instance_eval(&block)
    end

    def get_rack_app(env)
      raise "No routes!!!" unless @route_obj
      @route_obj.check_url env["PATH_INFO"]
    end
  end
end
