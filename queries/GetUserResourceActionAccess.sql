SELECT 
	* 
FROM 
	`UserGroup` 
	JOIN `GroupGrant` ON
		`UserGroup`.`groupname` = `GroupGrant`.`groupname`
WHERE 
	username = @username AND
	resource = @resource AND
	((action = @action) OR (action = '*'))
