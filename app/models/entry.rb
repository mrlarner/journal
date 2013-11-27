class Entry < ActiveRecord::Base

  def self.latest(max=5)
    all.limit(max)
  end

  def self.default_scope
    order(created_at: :desc)
  end
end
