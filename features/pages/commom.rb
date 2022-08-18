class Commom
  def initialize
    @screen_title = Elements.new(:xpath, "//*[@resource-id='app.choco.dummyqa:id/title']")
  end

  def screen_title_text
    sleep(5)
    @screen_title.text
  end
end