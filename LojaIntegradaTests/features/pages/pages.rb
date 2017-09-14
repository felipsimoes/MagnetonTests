# Pages main class to instantiate page objects
class Pages
  @home = HomePage.new
  def self.home_page
    @home
  end
end
