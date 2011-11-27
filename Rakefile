require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.rdoc Readme.rdoc LICENSE irssi zsh zshrc].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub('.erb', '')}")
        puts "identical ~/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file)
    end
  end

  system('cat zshrc >> ~/.zshrc')

  configure_irssi
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub('.erb', '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub('.erb', '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end

def configure_irssi
  system('rm -fR ~/.irssi')
  system('mkdir -p ~/.irssi')

  # Link config file
  puts "generating ~/irssi/.config"
  File.open(File.join(ENV['HOME'], ".irssi/config"), 'w') do |new_file|
    new_file.write ERB.new(File.read("irssi/config.erb")).result(binding)
  end
  puts "copying IRSSI themes..."
  system("cp irssi/*.theme ~/.irssi")

  puts "copying IRSSI plugins..."
  system("mkdir -p ~/.irssi/")
  system("cp -r irssi/scripts ~/.irssi")
end
