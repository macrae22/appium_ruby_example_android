![CI workflow](https://github.com/macrae22/ruby_appium_example/actions/workflows/main.yml/badge.svg)

# ♦️ ruby_appium_example
Android automation testing using Appium, Ruby, and design pattern Page Object Model (POM).

## ⚙️ Setup
### 👬 Cloning project
1. Clone the project (`git clone https://github.com/macrae22/ruby_appium_example.git`)

### 💿 Install bundler
Bundler is a dependancy manager for Ruby gems</br>

2. Download bundler (`gem install bundler`)
3. Install project gems (`bundle install`)

### 💽 Appium Server
4. Install Appium Server (http://appium.io/)
5. Start Appium Server from GUI

### 🧪 Running tests
5. Navigate to the projects `tests` directory (`cd tests`)
6. Run `bundle exec rspec horizontalscrolltest.rb` for a specific test spec
7. Run `bundle exec rspec *.rb` to run all test specs

-------------------------
## Test Examples
There are 4 main examples which I hope will help you.  

**verticalscrolltest**  
There is a [scroll_to](https://github.com/macrae22/ruby_appium_example/blob/4f2a1faa2641fb50875f5a0067254e0dd01cd6c9/tests/common/common.rb#L13) method which allows you to scroll vertically to an element.

**horizontalscrolltest**
This test uses a [swipe_to](https://github.com/macrae22/ruby_appium_example/blob/4f2a1faa2641fb50875f5a0067254e0dd01cd6c9/tests/common/common.rb#L39) method which allows you to swipe horizontally to an element.

**deeplinktest**
Deeplink testing is very straight forward in Appium, check it out.

**logintest**
This test contains a method _(scenario)_ to login _(essentially extracting out login steps into a method)_

-------------------------
## 🤖 CI
This project is setup to use **Github Actions** and will kick-off all UI tests when a new pull-request is submitted.

You can see the CI setup within [main.yml](https://github.com/macrae22/ruby_appium_example/blob/main/.github/workflows/main.yml).

Essentially it does the following:
* Spins up a **MacOS-11** VM
* Checkouts the project
* Installs **Ruby**
* Sets up **node**
* Installs **Appium Server**
* Checks whether **AVD** has been cached _(to save time installing and setting up a new emulator on each run)_
* Opens an **Android emualtor**
* Runs tests
* Generates **testing results report**

