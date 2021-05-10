class CronofyService
  def self.read_events(user)
    cronofy = Cronofy::Client.new(access_token: user ? user.access_token : '')
    events = cronofy.read_events
    events
  end
end