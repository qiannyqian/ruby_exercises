class Oven
  def initialize
    @cookies_in_oven = []
  end

  def add_cookie(cookie)
    @cookies_in_oven << cookie
  end

  def bake! (time = 1)
    @cookies_in_oven.each do |cookie|
      cookie.get_baked!(time)
    end
  end

  def check_cookies
    @cookies_in_oven
  end

end

class Cookie
  def initialize
    @time_in_oven = 0
  end

  def get_baked!( time = 1 )
    @time_in_oven += time
  end

  def ready?
    case @time_in_oven
    when 0..doughy
      :doughy
    when doughy...ideal_bake_time
      :nearly_there
    when ideal_bake_time
      :ready
    else
      :burned
    end
  end

  def doughy
    ideal_bake_time / 3
  end

  def to_s
    "#{self.class}, #{ready?}, time in oven: #{@time_in_oven}"
  end
end

class ChocolateChip < Cookie
  def ideal_bake_time
    20
  end
end

class Hazelnut < Cookie
  def ideal_bake_time
    15
  end
end

class PeanutButter < Cookie
  def ideal_bake_time
    13
  end
end

oven = Oven.new
choc = ChocolateChip.new
nut = Hazelnut.new

oven.add_cookie(choc)
puts oven.check_cookies
oven.bake!(10)
puts oven.check_cookies
oven.add_cookie(nut)
oven.bake!(10)
puts oven.check_cookies
