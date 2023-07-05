# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
  end
  
  def batch_badge_creator(names)
    badges = []
    names.each do |name|
      badges.push(badge_maker(name))
    end
    badges
  end
  
  def assign_rooms(speakers)
    rooms = []
    speakers.each_with_index do |speaker, index|
      room_number = index + 1
      rooms << "Hello, #{speaker}! You'll be assigned to room #{room_number}!"
    end
    rooms
  end
  
  def printer(attendees)
    badges = batch_badge_creator(attendees)
    rooms = assign_rooms(attendees)
  
    badges.each do |badge|
      puts badge
    end
  
    rooms.each do |assignment|
      puts assignment
    end
  end
  