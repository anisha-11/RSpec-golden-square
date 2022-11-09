def reading_time(text)
    wpm = 200.0
    words = text.split.length
    time = words / wpm 
    return time.to_s + " minutes"
end