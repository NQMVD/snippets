-- Enters an interactive mode with the user, running each string that the user enters.        -- Using simple commands and other debug facilities, the user can inspect global and local    -- variables, change their values, evaluate expressions, and so on.                           -- A line containing only the word cont finishes this function, so that the caller            -- continues its execution.
-- Note that commands for debug.debug are not lexically nested within any function,
-- and so have no direct access to local variables.

function love.keypressed(key, u)
   --Debug
   if key == "rctrl" then --set to whatever key you want to use
      debug.debug()
   end
end
