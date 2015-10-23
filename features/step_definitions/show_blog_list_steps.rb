Then /^I can see list of (\d) posted blogs$/ do |count|
  if count.to_i > 0
    expect(find(:css, "table tr:nth-child(#{(count.to_i + 1)})")).to have_content("Title #{count}")
  else
    expect(find(:css, "table tr:nth-child(#{(count.to_i + 1)})")).to have_content("")
  end
  # save_and_open_screenshot
end
