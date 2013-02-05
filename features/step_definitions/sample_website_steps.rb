# encoding: utf-8

もし /^"(.*?)"ページを表示する$/ do |page_name|
  if page_name == "トップ"
    path = "/"
  end
  visit path
end

ならば /^"(.*?)"と表示されていること$/ do |text|
 page.should have_content(text)
end
