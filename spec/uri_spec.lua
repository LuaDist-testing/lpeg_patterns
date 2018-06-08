local lpeg = require "lpeg"

describe("URI", function()
	local uri = require "lpeg_patterns.uri".uri * lpeg.P(-1)
	it("Should match file urls", function()
		assert.truthy ( uri:match "file:///var/log/messages" )
		assert.truthy ( uri:match "file:///C:/Windows/" )
	end)
	it("Should match localhost", function()
		assert.truthy ( uri:match "localhost" )
		assert.truthy ( uri:match "localhost:8000" )
		assert.truthy ( uri:match "http://localhost:8000" )
	end)
end)

describe("Sane URI", function()
	local sane_uri = require "lpeg_patterns.uri".sane_uri
	it("Not match the empty string", function()
		assert.falsy ( sane_uri:match "" )
	end)
	it("Not match misc words", function()
		assert.falsy ( sane_uri:match "the quick fox jumped over the lazy dog." )
	end)
	it("Not match numbers", function()
		assert.falsy( sane_uri:match "123" )
		assert.falsy( sane_uri:match "17.3" )
		assert.falsy( sane_uri:match "17.3234" )
		assert.falsy( sane_uri:match "17.3234" )
	end)
end)