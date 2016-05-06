require 'prime'
def prime(n)
Prime.take_while {|p| p <= n }
end

print prime(23)