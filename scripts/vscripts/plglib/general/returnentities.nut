function ReturnEntityList(ent, IsClass = false, max = 0)
{
	local arr = [];
	if (max > 0)
	{
		
		local count = 0;
		if (IsClass == true)
		{
			local blent = null;
			while ( blent = Entities.FindByClassname( blent, ent ) )
			{
				arr.append(blent)
				count = count+1
				if (count==max) {break;}
			}
		}
		else
		{
			local blent = null;
			while ( blent = Entities.FindByName( blent, ent ) )
			{
				arr.append(blent)
				count = count+1
				if (count==max) {break;}
			}
		}
	return arr;
	}
	local blent = null;
	if (IsClass == true)
	{
		while ( blent = Entities.FindByClassname( blent, ent ) )
		{
			arr.append(blent)
		}
	}
	else
	{
		while ( blent = Entities.FindByClassname(blent, ent) )
		{
			arr.append(blent)
		}
	}
	return arr;
}
