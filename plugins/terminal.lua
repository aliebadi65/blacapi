do
    
function run(msg, matches)
  if matches[1] == "reboot" and is_sudo(msg) then
        local s = io.popen("sh /blac/data/remind/upstart.sh") 
        return ( s:read("*a") ) 
  elseif matches[1] == "serverinfo" and is_sudo(msg) then
     local f = io.popen("sh /blac/data/remind/cmd.sh") 
     return ( f:read("*a") ) 
  end
end
return {
  patterns = {
    "^[/!](reboot)",
    "^[/!](serverinfo)"
  },
  run = run
}
end
