#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/Lige-w/jukebox-cli-dc-web-career-040119/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/Lige-w/jukebox-cli-dc-web-career-040119/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/Lige-w/jukebox-cli-dc-web-career-040119/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/Lige-w/jukebox-cli-dc-web-career-040119/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/Lige-w/jukebox-cli-dc-web-career-040119/audio/Emerald-Park/05.mp3',
"Blue" => '/home/Lige-w/jukebox-cli-dc-web-career-040119/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/Lige-w/jukebox-cli-dc-web-career-040119/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
  end
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.keys.each_with_index {|song, index| puts "#{song}"}
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  selected = gets.chomp

  if my_songs.include?(selected)
        puts "Playing #{selected}"
        system start my_songs[selected]
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help

  puts "Please enter a command:"
  command = gets.chomp



  while command != "exit" do
    puts "Please enter a command:"

    case command
    when "help"
      help
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox
    end

    command = gets.chomp
  end
end
