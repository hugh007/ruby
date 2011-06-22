module Pages
  class  HomePage

    def initialize

    end

    def  login_lnk
      $browser.link(:url,"http://www.yihaodian.com/passport/login_input.do")
    end

    def login_name
      $browser.span(:id,"user_name").text
    end


  end
end