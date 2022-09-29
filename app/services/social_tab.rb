class SocialTab
  require 'watir'
  # def initialize(message)
  #   @message = message
  # end
  class << self
    def fb_tab
      test_site = "https://www.facebook.com/"
      browser = Watir::Browser.new:chrome
      browser.goto test_site
      # browser.text_field(name: "email").set "sevencube777@gmail.com"
      # browser.text_field(name: "pass").set "jeen7mata"
      # browser.button(name: "login").click
      # Add
      # browser.goto test_site
      # cookie = Cookie.last
      # if cookie.present?
        browser.cookies.add "c_user", "100010222652927", :path=>"/", :domain=>".facebook.com", :expires=>'2023-09-21 11:21:54 +0000', :same_site=>"None", :http_only=>true, :secure=>true

        browser.cookies.add "xs", "34%3AtLJ_H2PfDcdv7g%3A2%3A1664187835%3A-1%3A13397", :path=>"/", :domain=>".facebook.com", :expires=>'2023-09-21 11:21:54 +0000', :same_site=>"None", :http_only=>true, :secure=>true
      # end

      # Load from a File
      # cookie = browser.cookies.load '/'

      # List (right path)
      # browser.goto "facebook.com/seven.cube.31/"
      # cookies = browser.cookies.to_a

      # puts cookies
      # cookies.each do |atr|
      #   coo = Cookie.create(atr)
      #   puts coo
      # end

      browser.goto "facebook.com/"#seven.cube.31/"
      # res = browser.cookies.to_a.select{|obj| obj[:name] == "xs" || obj[:name] == "c_user"}.each do |ha|
      #         if Cookie.last.nil?
      #           Cookie.create(name: ha[:name], value: ha[:value], path: ha[:path], domain: ha[:domain], expires: ha[:expires], same_site: ha[:same_site], http_only: ha[:http_only], secure: ha[:secure])
      #         else
      #           Cookie.last.update(name: ha[:name], value: ha[:value], path: ha[:path], domain: ha[:domain], expires: ha[:expires], same_site: ha[:same_site], http_only: ha[:http_only], secure: ha[:secure])
      #         end
      #       end

      # browser.link(href: "https://mail.google.com/mail/?tab=wm").click
      # puts "Test Executes"
      # browser.close
    end

    def reddit_tab
      test_site = "https://www.reddit.com/"
      browser = Watir::Browser.new:chrome
      browser.goto test_site
      browser.cookies.add "reddit_session", "2264015716874%2C2022-09-28T08%3A46%3A20%2Cb2a43fcc2331f60cc5885633b8232fdc225343c2", :path=>"/", :domain=>".reddit.com", :expires=>Time.now + 1.year, :same_site=>"None", :http_only=>true, :secure=>true
      browser.cookies.add "session_tracker", "micnqrkqapgeqbcoqn.0.1664354793354.Z0FBQUFBQmpOQW5wM3lxLWNHRnUwckNDb0w3TFNpNEstTVlON1dLZnpPX1FNcnFEUDNHTzlncXM5MHpEa2lwRXNsVFdYWl8zLWVFS2FXZE84UUJ4YTRyVkZaZnhTM1BjRHRwS2k1eGxMdkhaZ1UxMXMwSkhJX1VrWllCY00tSlBOTUR1X3N5N1Yta2k", :path=>"/", :domain=>".reddit.com", :expires=>Time.now + 1.year, :same_site=>"None", :http_only=>true, :secure=>true
      browser.cookies.add "token_v2", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NjQ0NDEwNjIsInN1YiI6IjIyNjQwMTU3MTY4NzQtUk9kUWY4MmtuanZVTHJGbnJsM3VCc1F5Qk1WWFRBIiwibG9nZ2VkSW4iOnRydWUsInNjb3BlcyI6WyIqIiwiZW1haWwiLCJwaWkiXX0.YVkbIKNlxDjw4MW67PfX6wY9DltlSKf66P94h4UgJLM", :path=>"/", :domain=>".reddit.com", :expires=>Time.now + 1.year, :same_site=>"None", :http_only=>true, :secure=>true
      browser.goto "reddit.com/"
    end
  end
end