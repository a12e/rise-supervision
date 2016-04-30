class HomeController < ApplicationController
    def index
    	@hosts = Host.all
    	@services = Service.all
    	@interfaces = Interface.all
    end
end
