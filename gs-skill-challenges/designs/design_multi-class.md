# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```


                     ┌──────────────────────────────────────┐
                     │  DiaryTracker                        │
                     │                                      │
                     │  - add_entry(entry)                  │
                     │  - add_task(task)                    │
                     │  - diary_list                        │
                     │  - task_list                         │
                     │  - find_best_entry                   │
                     │  - phone_number_list                 │
                     │                                      │
                     │                                      ├──────┐
                     │                                      │      │
             ┌───────┤                                      │      │
             │       │                                      │      │
             │       │                                      │      │
             │       │                                      │      │
             │       └──────────────────────────────────────┘      │
             │                                                     │
             │                                                     │
             │                                                     │
             │                                                     │
             │                                                     │
     ┌───────▼────────────────┐                  ┌─────────────────▼────────┐
     │ DiaryEntry             │                  │  Todo                    │
     │                        │                  │                          │
     │ - title                │                  │  - title                 │
     │                        │                  │                          │
     │ - contents             │                  │                          │
     │                        │                  │                          │
     │ - reading_time         │                  │                          │
     │                        │                  │                          │
     │ - count_words          │                  │                          │
     │                        │                  │                          │
     │                        │                  │                          │
     │                        │                  │                          │
     └────────────────────────┘                  └──────────────────────────┘






```

_Also design the interface of each class in more detail._

```ruby
class DiaryTracker 
  def initialize
  end 

  def add_entry(entry)
  # diary entry instance
  # returns nothing
  end 

  def add_task(task)
  # task instance 
  # returns nothing
  end 

  def diary_list
  # returns list of diary entries 
  end 

  def task_list
  # returns list of tasks
  end 

  def find_best_entry(wpm, minutes)
  # wpm and minutes are both integers
  # returns longest entry read in shortest amount of time
  end 

  def phone_number_list
  # returns list of phone numbers in the diary entry 
  end 
end 

class DiaryEntry
  def initialize(title, contents)
  end 

  def title 
  # returns title
  end 

  def contents 
  # returns contents
  end 

  def count_words 
  # returns number of words from contents 
  end 

  def reading_time
  # returns time taken to read entries
  end 
end 

class Todo
  def initialize(title)
  end 

  def title 
  # return title
  end
end 

```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby



```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
