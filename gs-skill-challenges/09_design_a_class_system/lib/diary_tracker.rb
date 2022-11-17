class DiaryTracker 
  def initialize
    @diary_list = []
    @task_list = [] 
    @phone_number_list = []
  end 

  def add_entry(diary_entry)
    @diary_list << diary_entry 
  end 

  def add_task(task)
    @task_list << task 
  end 

  def diary_list
   return @diary_list
  end 

  def task_list
    return @task_list
  end 

  def find_best_entry(wpm, minutes)
    words = (wpm * minutes)
    readable_entries = @diary_list.select { |entry|
      entry.reading_time(wpm) <= minutes 
    }
    return readable_entries.max_by { |entry| entry.count_words }
  end 

  def phone_number_list
    @diary_list.each do |entry| @phone_number_list += entry.phone_number 
    end 
    return @phone_number_list
  end 
end 