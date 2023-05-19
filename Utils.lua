function split(inputstr, sep)
    if sep == nil then
       sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
       table.insert(t, str)
    end
    return t
end

function includes(table,thing)
  for k,v in pairs(table) do
      if v == thing then
          return true
      end
  end
  return false
end

function indexOf(table,thing)
  for k,v in pairs(table) do
      if v == thing then
          return k
      end
  end
  return nil
end

function avarage(table)
    local sum = 0
    for k,v in ipairs(table) do
      sum = sum + v
    end
    return sum / #table
end
