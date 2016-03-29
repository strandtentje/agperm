DELETE FROM GroupGrant 
WHERE id > 0
AND groupname = @groupname
AND action = @action
AND resource = @resource
AND subresource = @subresource