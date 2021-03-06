SELECT 
    `UserGroup`.id AS usergroupid,
	`GroupGrant`.id AS groupgrantid
FROM 
	`UserGroup` 
	JOIN `GroupGrant` ON
		`UserGroup`.`groupname` = `GroupGrant`.`groupname`
WHERE 
	username = @loggedinusername AND
	((resource = @resource) OR (resource = '*')) AND
	((subresource = @subresource) OR (subresource = '*')) AND
	((action = @action) OR (action = '*'));
