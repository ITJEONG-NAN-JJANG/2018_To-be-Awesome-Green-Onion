-- This file is for use with Corona(R) SDK
--
-- This file is automatically generated with PhysicsEdtior (http://physicseditor.de). Do not edit
--
-- Usage example:
--			local scaleFactor = 1.0
--			local physicsData = (require "shapedefs").physicsData(scaleFactor)
--			local shape = display.newImage("objectname.png")
--			physics.addBody( shape, physicsData:get("objectname") )
--

-- copy needed functions to local scope
local unpack = unpack
local pairs = pairs
local ipairs = ipairs

local M = {}

function M.physicsData(scale)
	local physics = { data =
	{

		["sheep"] = {




                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -47, 8  ,  -46, -3  ,  -43, -17  ,  -35, -18.666664123535156  ,  -30, 18  ,  -42, 18  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   44, 8  ,  40.666664123535156, -10  ,  46, -7  ,  49, 4  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   30, 23  ,  11, -25  ,  22, -25  ,  38, -20  ,  40.666664123535156, -10  ,  44, 8  ,  41, 18  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -11, -27  ,  30, 23  ,  22, 24  ,  -1, 23  ,  -35, -18.666664123535156  ,  -33, -23  ,  -25, -30  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   11, -25  ,  30, 23  ,  -11, -27  ,  1, -30  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -1, 23  ,  22, 24  ,  12, 28  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -43, -17  ,  -46, -3  ,  -47, -12  }
                    }
                     ,
                    {
                    pe_fixture_id = "", density = 2, friction = 0, bounce = 0,
                    filter = { categoryBits = 1, maskBits = 65535, groupIndex = 0 },
                    shape = {   -30, 18  ,  -35, -18.666664123535156  ,  -1, 23  ,  -12, 26  ,  -21, 25  }
                    }



		}

	} }

        -- apply scale factor
        local s = scale or 1.0
        for bi,body in pairs(physics.data) do
                for fi,fixture in ipairs(body) do
                    if(fixture.shape) then
                        for ci,coordinate in ipairs(fixture.shape) do
                            fixture.shape[ci] = s * coordinate
                        end
                    else
                        fixture.radius = s * fixture.radius
                    end
                end
        end

	function physics:get(name)
		return unpack(self.data[name])
	end

	function physics:getFixtureId(name, index)
                return self.data[name][index].pe_fixture_id
	end

	return physics;
end

return M
