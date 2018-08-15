JSON Parsing Class LAB Prep
Timings
This lesson should take between 30 to 45 minutes to complete.

Pre-requisites
Ruby installed
A text editor
JSON Gem installed and required in the file
Steps
Have the class create a new folder called JSON_Parse_Testing where they choose
Ask the class to follow along and create the same file and examples during the walk through
Create a file called json_parse_walkthrough.rb
This lesson covers
The below concepts will be discussed: -
Setting up RSpec correctly to use your class
Before hooks and utilising your code
Thinking about what to test
Understanding that without having access to the back end code we are black box testing
Setting things up
We should have gone through enough RSpec set up by now to run things so first of all access our new folder that should have been created JSON_Parse_Testing - copy your Json parse class file and the json_exchange_rates.json file into the new folder.

So you should have a folder structure similar to: -

JSON_Parse_Testing
- json_parse_walkthrough.rb
- json_exchange_rates.json
NOTE FOR TRAINER - Ask them now how to go about setting up an RSpec project

Steps if needed are: -

In the command line run: - rspec --init

Setting up the spec_helper
The code within the spec helper should look as below: -

require 'json'
require_relative 'json_class_parse_walkthrough'

RSpec.configure do |config|
  config.formatter = :documentation
end
We need to require the json gem - we also need to require_relative 'json_class_parse_walkthrough' should be the file name that they have created

The RSpec configure is down to the individual and we should have covered enough by this stage with RSpec configure.

STEP 1 - Planning your tests - 10 mins

The group should consider what tests they are going to write. We don't have access to any back end system. The only thing we have to work with is the file given to us and we need to generate tests.

STEP 2 - Building your - 20-30 mins

Now step through and begin to create your tests. You will need to ensure that your assertions are testing something viable. Use all the skills we have learnt in parsing data.

STEP 3 - Provide some of the solution tests

From the solution provide some of the it statements if they haven't already got them then they should consider writing tests for them.

Summary
You have learned about: -

Setting up RSpec correctly to use your class
Before hooks and utilising your code
Thinking about what to test
Understanding that without having access to the back end code we are black box testing
Next Steps
Using expanding out parsing class
