Config = {}

-- priority list can be any identifier. (hex steamid, steamid32, ip) Integer = power over other people with priority
-- a lot of the steamid converting websites are broken rn and give you the wrong steamid. I use https://steamid.xyz/ with no problems.
-- you can also give priority through the API, read the examples/readme.
Config.Priority = {
	-- Staff :
    
    ["steam:11000010ab26a0e"] = 100, -- Cookie - Fonda + DEV
	["steam:11000010bc55e27"] = 100, -- DX - Fonda + Graphiste 
    ["steam:11000010c9836d9"] = 100, -- Vamp - Fonda
    ["steam:1100001093b5a04"] = 100, -- Dylan - MODO

    -- Amis : 

    ["steam:110000101df6a75"] = 80, -- Athon - AMIS
    ["steam:11000014990dcf8"] = 80, -- Suba - AMIS
    ["steam:11000014520aac2"] = 80, -- Brayan - AMIS - Oliver
    ["steam:110000146d47823"] = 80, -- Iramee [FR] - AMIS - Celian
    ["steam:110000159d97913"] = 80, -- Iramee - AMIS - Celian
    ["steam:110000119e01048"] = 80, -- Neumann - AMIS
	["steam:11000010905ddc9"] = 90, -- Isa 1 - AMIS
    ["steam:11000014a1fd448"] = 90, -- Isa 2  - AMIS
    ["steam:11000011504b225"] = 90, -- Nana - AMIS

    -- Joueur : 

}

-- require people to run steam
Config.RequireSteam = true

-- "whitelist" only server
Config.PriorityOnly = true

-- disables hardcap, should keep this true
Config.DisableHardCap = true

-- will remove players from connecting if they don't load within: __ seconds; May need to increase this if you have a lot of downloads.
-- i have yet to find an easy way to determine whether they are still connecting and downloading content or are hanging in the loadscreen.
-- This may cause session provider errors if it is too low because the removed player may still be connecting, and will let the next person through...
-- even if the server is full. 10 minutes should be enough
Config.ConnectTimeOut = 600

-- will remove players from queue if the server doesn't recieve a message from them within: __ seconds
Config.QueueTimeOut = 90

-- will give players temporary priority when they disconnect and when they start loading in
Config.EnableGrace = true

-- how much priority power grace time will give
Config.GracePower = 5

-- how long grace time lasts in seconds
Config.GraceTime = 480

-- on resource start, players can join the queue but will not let them join for __ milliseconds
-- this will let the queue settle and lets other resources finish initializing
Config.JoinDelay = 30000

-- will show how many people have temporary priority in the connection message
Config.ShowTemp = true

-- simple localization
Config.Language = {
    joining = "\xF0\x9F\x8E\x89Connexion en cours...",
    connecting = "\xE2\x8F\xB3Connexion...",
    idrr = "\xE2\x9D\x97[CalicoCity] Erreur: Je n'ai pas pu récupérer vos identifiants, essayez de redémarrer.",
    err = "\xE2\x9D\x97[CalicoCity-] Il y a eu une erreur",
    pos = "\xF0\x9F\x90\x8CVous êtes %d/%d dans la file \xF0\x9F\x95\x9C%s",
    connectingerr = "\xE2\x9D\x97[CalicoCity] Erreur: Erreur lors de l'ajout à la liste de connexion",
    timedout = "\xE2\x9D\x97[CalicoCity] Erreur: Timed out?",
    wlonly = "\xE2\x9D\x97[CalicoCity] Vous devez être sur la liste blanche pour rejoindre ce serveur",
    steam = "\xE2\x9D\x97 [CalicoCity] Erreur: Steam doit être en marche."
}