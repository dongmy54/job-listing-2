class WelcomeController < ApplicationController
def index
	flash[:notice] = "这是董名晏制作的第一个网站！"
end
end
