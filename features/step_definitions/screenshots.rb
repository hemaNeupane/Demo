$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))

Given(/^I am on the "(.*?)"$/) do |arg1|
  print arg1
  visit arg1
end

Then(/^I save the screenshot with "(.*?)"$/) do |arg1|
  screenshot_path = nil
  t = Time.new
    timestamp = Time.now.strftime('%Y_%m_%d-%HH_%MM_%SS')
  screenshot_path = "#{arg1}_#{timestamp}_#{t.zone}.png"
    benchmark = Benchmark.measure {page.driver.browser.save_screenshot(screenshot_path)}
    embed(File.basename(screenshot_path), 'image/png', 'Screenshot')
end


