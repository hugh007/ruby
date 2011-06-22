module Pages
  class CommonPage

    def initialize
      
    end

    def check_page(pagename)
      case
        when pagename == "Home Page"
           $browser.goto("http://www.yihaodian.com")
          puts "首页"
        when pagename == "Login Page"
          $browser.goto("http://www.yihaodian.com/passport/login_input.do")
          puts "登陆页"
        when pagename == "Register Page" || pagename == "注册页"
          $browser.goto("http://www.yihaodian.com/passport/register_input.do")
          puts "注册页"
        else
          puts pagename+"不存在"
      end
    end



    def link(url)
       $browser.link(:url,url)
    end

    def text(name, classname)
      $browser.text_field(:name => name,:class => classname)
    end

    def text_name(name)
      $browser.text_field(:name => name)
    end

    def text_xpath(xpath)

    end

    def image(src)
      $browser.image(:src ,src)
    end
  end
  
end