module PagesHelper
  def twitter_parser tweet
    #tweet = "_rails: Fix typo in railties/test https://t.co/uHdky9TEWY #rails #rubyonrails"  #sample tweet for testing
    
    regex = /(http|https|ftp)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(:[a-zA-Z0-9]*)?\/?([a-zA-Z0-9\-\._\?\,\'\/\\\+&amp;%\$#\=~])*/ix
            #regex source: http://regexlib.com/REDetails.aspx?regexp_id=146
    tweet.gsub(regex) do |url| 
      "<a href='#{url}' target = '_blank'>#{url}</a>"
    end.html_safe
  end
end
