

// Object cleanup

class CleanupBodies
{
	title    = "Dead bodies cleanup interval";
	values[] = {0, 60, 120, 180, 300, 600, 1800};
	texts[]  = {"Disabled", "1 min.", "2 min.", "3 min.", "5 min.", "10 min.", "30 min."};
	default  = 600;
};

class CleanupVehicles
{
	title    = "Destroyed vehicles cleanup interval";
	values[] = {0, 300, 600, 900, 1800, 2700, 3600};
	texts[]  = {"Disabled", "5 min.", "10 min.", "15 min.", "30 min.", "45 min.", "1 hour"};
	default  = 1800;
};

class CleanupAbandoned
{
	title    = "Abandoned vehicles cleanup interval";
	values[] = {0, 300, 600, 900, 1800, 2700, 3600};
	texts[]  = {"Disabled", "5 min.", "10 min.", "15 min.", "30 min.", "45 min.", "1 hour"};
	default  = 3600;
};

class CleanupWeapons
{
	title    = "Dropped weapons cleanup interval";
	values[] = {0, 60, 120, 180, 300, 600, 1800};
	texts[]  = {"Disabled", "1 min.", "2 min.", "3 min.", "5 min.", "10 min.", "30 min."};
	default  = 600;
};

class CleanupDemos
{
	title    = "Explosives cleanup interval";
	values[] = {0, 60, 120, 180, 300, 600, 900, 1800, 3600};
	texts[]  = {"Disabled", "1 min.", "2 min.", "3 min.", "5 min.", "10 min.", "15 min.", "30 min.", "1 hour"};
	default  = 3600;
};

class CleanupOther
{
	title    = "Misc. cleanup interval";
	values[] = {0, 60, 120, 180, 300, 600, 900, 1800, 3600};
	texts[]  = {"Disabled", "1 min.", "2 min.", "3 min.", "5 min.", "10 min.", "15 min.", "30 min.", "1 hour"};
	default  = 600;
};
