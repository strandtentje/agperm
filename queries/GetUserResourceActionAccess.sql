SELECT 
	`UserGroup`.id AS usergroupid
FROM 
	`UserGroup` 
	JOIN `GroupGrant` ON
		`UserGroup`.`groupname` = `GroupGrant`.`groupname`
WHERE 
	username = @loggedinusername AND
	((resource = @resource) OR (resource = '*')) AND
	((action = @action) OR (action = '*'))
