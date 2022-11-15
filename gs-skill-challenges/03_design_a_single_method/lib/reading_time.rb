def reading_time(text)
    wpm = 200.0
    words = text.split.length
    time = words / wpm 
    if time > 1
        return time.to_s + " minutes"
    else
        time *= 60
        return time.to_i.to_s + " seconds"
    end
end