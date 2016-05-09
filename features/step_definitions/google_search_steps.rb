When(/^I search google for a common term$/) do
  # Write code here that turns the phrase above into concrete actions
  #go to google, the line below the @browser.goto is an instance variable, makes it visible for the scope of the test
  @browser.goto 'google.com'
  # perform a search for a common term
  search_field = @browser.text_field(id: 'lst-ib')
  search_field.flash
  search_field.set('socks')
  search_field.send_keys(:enter)
  sleep 5
end

Then(/^each search result title contains the search term$/) do
   # Write code here that turns the phrase above into concrete actions
  # go get the results
  # compare the search term to each of the result titles
  results = @browser.divs(class: 'g')
  results.each do |result|
    # do something, make sure to add expect statements. i.e expect yadi yada
	expect(result.div.div.h3.text).to include 'socks'	
	end
end

Then(/^each search result summary contains the search term$/) do
   # Write code here that turns the phrase above into concrete actions
  # go get the results
  # compare the search term to each of the result summaries
  # the current problem is that there are too many divs
  results = @browser.divs(class: 'g')
  results.each do |result|
    expect(result.div.div.h3.text).to include 'socks'
	end
end