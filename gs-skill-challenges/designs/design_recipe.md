# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

reading_time(text)
return a time to read the text

## 3. Create Examples as Tests

reading_time("one") => 1/200 minutes
reading_time(400 words) => 2 minutes 
reading_time(500) => 2.5 minutes
reading_time(200) => 60 seconds

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._