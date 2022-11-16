# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby
verify = grammar(text)

text is a string containing a sentence 
verify is a boolean

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
grammar(Hello.) >> true
grammar(hello) >> false 
grammar(Hello) >> false 
grammar(hello.) >> false 
grammar(hello world!) >> false 
grammar(Hello world!) >> true
grammar(Hello world?) >> true

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

