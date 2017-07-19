p Dir["**/index.html"].keep_if { |f| /^\d+/.match(f) }
