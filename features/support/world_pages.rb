require 'require_all'

require_all 'lib'

module WorldPages
  def base_page
    @base_page ||= BasePage.new(@browser)
  end

end

World(WorldPages)