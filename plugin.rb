# name: Discourse Clyp Onebox
# about: Adds support for embedding Clyp audio player widgets within Discourse.
# version: 0.1
# authors: Daniel Marquard
# url: https://github.com/critcola/discourse-clyp-onebox

class Onebox::Engine::ClypOnebox
	include Onebox::Engine

	REGEX = /^https?:\/\/clyp.it\/(\w+)/
	matches_regexp REGEX

	def id
		@url.match(REGEX)[1]
	end
	
	def to_html
		"<iframe width=\"100%\" height=\"160\" src=\"https://clyp.it/#{id}/widget\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>"
	end
end
