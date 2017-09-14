# MagnetonTests
[![Build Status](https://circleci.com/gh/felipsimoes/MagnetonTests.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/felipsimoes/MagnetonTests)

This project uses [Magneton](https://chocolatey.org/packages/selenium-all-drivers) A gem to generate all files needed in a project that will support Cucumber, SitePrism, Capybara and Selenium

This project uses [SitePrism](https://github.com/natritmeyer/site_prism/) implementation for Page Object Pattern and its concept of Sections

It also use [Faker](https://github.com/stympy/faker) to generate random data

## Running on Windows
In order to configure the web browsers drivers in Windows environment I found great value in the following Chocolatey package

[agabrys chocolatey pkg](https://chocolatey.org/packages/selenium-all-drivers)

It brings all the following drivers:
- Gecko (e.g. Firefox)
- Google Chrome
- Internet Explorer
- Microsoft Edge
- Opera

## Project peculiarities
### Loja Integrada
Due to a Jquery mask plugin when using the element.set() method the characters on a string were shuffled filling the input field with undesired values. To solve this I used the page.execute_script() method such as follows
```ruby
page.execute_script("$('#id_telefone_celular').val('13988458428');")
```
In order to reuse some properties values for multiple scenarios two solutions were used in different moments.
At first a tag was defined for the first desired scenario setting a Before definition related to that.
```ruby
Before('@email') do
  $home = HomePage.new  
end
```
For a more general approach, a broad use class was declared as Pages, in which its static methods will provide an instance of a related page.
```ruby
class Pages
  @@home = HomePage.new
  
  def self.home
    @@home
  end
end
```

In order for the Sections classes to load without requiring it in every Page class, the *env.rb* have been modified and the follow has been included after the gems are required.
```ruby
Dir[File.expand_path(File.dirname(__FILE__) + '/../pages/*section.rb')].each {|file| require file }
```