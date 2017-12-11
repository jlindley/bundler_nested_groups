require 'bundler/setup'

begin
  require "rake"
rescue Exception
  warn "Couldn't require rake"
end

begin
  require "thor"
rescue Exception
  warn "Couldn't require thor"
end
