module Pages
  class  LoginPage
    def initialize
           @common_page  = CommonPage.new
    end

    def  username_txt
     # $browser.text_field(:name,'name')
       @common_page.text('credentials.username')

    end

    def  password_txt
      @common_page.text("credentials.password")
    end

    def login_img
      @common_page.image(/login2.gif/)
      #$browser.image(:src ,/login2.gif/)
    end


  end
end