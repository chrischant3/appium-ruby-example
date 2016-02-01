class BasePage
  def initialize(browser)

    @browser = browser
  end

  def visit_page(url)
    @browser.goto(url)
  end
end