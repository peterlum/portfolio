class User < ActiveRecord::Base
	has_one :profile
end

class Profile <ActiveRecord::Base
	belongs_to :user
end

class Posts <ActiveRecord::Base
	belongs_to :user
end

class Sessions <ActiveRecord::Base
	belongs_to :user
end

class Userposts <ActiveRecord::Base
	belongs_to :posts
	belongs_to :user
end

