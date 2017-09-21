#@note @rails checkout http://code.tutsplus.com/tutorials/testing-your-ruby-code-with-guard-rspec-pry--cms-19974
#for instuctions
guard 'rspec',cmd: 'rspec --color --format doc' do	
  # watch /app/ files
  watch(%r{^app/(.+).rb$}) do |m|
    "spec/#{m[1]}_spec.rb"
  end

  # watch /spec/ files
  watch(%r{^spec/(.+).rb$}) do |m|
    "spec/#{m[1]}.rb"
  end
end

