SELECT 
	* 
FROM 
	`UserGroup` 
	JOIN `GroupGrant` ON
		`UserGroup`.`groupname` = `GroupGrant`.`groupname`
WHERE 
	username = @username AND
	resource = @resource AND
	((subresource = @subresource) OR (subresource = '*')) AND
	((action = @action) OR (action = '*'));
