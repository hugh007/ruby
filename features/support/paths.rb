module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'

=begin
 when /The Home Page/
      "http://www.yihaodian.com/product/index.do?merchant=1"

    when /The Login Page/
      "http://www.yihaodian.com/passport/login_input.do"
=end

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))
     # else
     #    raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
      #    "Now, go and add a mapping in features/support/paths.rb"

   else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
     rescue object => e
       raise "can't find mapping from \"#{page_name}\" to a path.\n" +
         "now, go and add a mapping in #{__file__}"      end
     end
  end
end

World(NavigationHelpers)
