## Pre-requirements
Installed:
*  Download and Install Appium Desktop/Server [I used Appium Desktop]
*  JDK (Java development kit)
*  Download and Install Java and set up the environment variable
*  Download and setup Android SDK (Software development kit)
*  IDE [I used RubyMine]
*  Node JS
*  Java-client jars
*  Android Emulator [Setup Android simulator in Android Studio]

## Steps
1. [install dependencies]  `bundle install`
2. In the `env.rb` file change the `deviceName` to your own.
3. Start Android emulator
4. Start Appium server
5. Via terminal access project folder [App]
6. [run the tests] `cucumber`
7. To run a specific test, you can use tags. Example: `cucumber -t @login_successfully`
8. To run the automated tests use the tag `@automated_test`, you can use tags. Example: `cucumber -t @automated_test`



