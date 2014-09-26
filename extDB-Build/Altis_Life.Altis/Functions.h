class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
	};
};



class SpyGlass
{
	tag = "SPY";
	class Functions
	{
		file = "SpyGlass";
		class cmdMenuCheck{};
		class cookieJar{};
		class menuCheck{};
		class notifyAdmins{};
		class observe{};
		class payLoad{};
		class variableCheck{};
		class initSpy {preInit=1;};
	};
};

		
class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		//class welcomeNotification {};
		class initcopeast {}; //<--- ADD JUST THIS AT THE END
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {};
		class adminTeleport {};
		class adminTpHere {};
		class adminDebugCon {};
		class adminCompensate {};
		class adminGodMode {};
		class adminFreeze {};
		class adminMarkers {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSiren {};
		class medicLights {};
	};
	
	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class chemlightUse {};
		class heal {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class repairTruckind {};
		class serviceChopper {};
		class serviceTruck {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class gatherApples {};
		//class gatherfichas {};
		class gatherCannabis {};
		class gatherHeroin {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class suicideBomb {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class impoundAction112 {};
		class pulloutAction {};
		class pulloutActionCiv {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class restrainActioncopeast {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class unrestrainciv {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class gatherPeaches {};
		class gatherCocaine {};
		class pumpRepair {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class sellTurtle {};
		class sellGoldBars {};
		class captureHideout {};
		class recolectarlupuloAction {}; //LUPULO
		class recolectarmaderaAction {}; //MADERA
		class recolectarmaltaAction {}; //MALTA
		class casino {}; //ROBAR CASINO
		class quemarcarbonAction {}; //QUEMAR CARBON
		class gathertabaco {};
		class packUpbarrera {};
		class packUpBarricade {};
		class packUpBarrier {};
		class packupcono {};
		class packupmauer{};
		class procesarcerveza {};
		class procesarSidra {};
		class procesaraceroinoxidable {};
		class procesaracero {};
		class robrepsol {};
		class robgalp {};
		class stealKit {};
		class surrender {};
		class takeOrgans {};
		class CookFrogAction {};
		class CookHermitLSD {};
		class activateNitro {};
		class CatchFrogAction {}; //COGER RANAS
		class seizeWeapon {};
		class seizeWeaponAction {};
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
	};
	
	class Config
	{
		file = "core\config";
		class licensePrice {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehiclerepaintCfg {};
		class vehiclerepaintStr {};
		class vehicleListCfg {};
		class licenseType {};
		class eatFood {};
		class varHandle {};
		class varToStr {};
		class impoundPrice {};
		class itemWeight {};
		class taxRate {};
		class virt_shops {};
		class vehShopLicenses {};
		class vehicleAnimate {};
		class weaponShopCfg {};
		class vehicleWeightCfg {};
		class houseConfig {};
		class updateClothing {};
		class copDefault {};
		class copeastDefault {}; //<-- ADD JUST THIS AT THE END
		
		
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_copeast {};
		class clothing_bruce {};
		class clothing_reb {};
		class clothing_dive {};
		class clothing_kart {};
		class clothing_pmc {};
		class clothing_donador {};
		class clothing_bountyh {};
		
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		//class salir {};
	};
	
	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class fetchGear{};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class handleDowned {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pulloutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class fatigueReset {}; //Add this
		class autoSave {};
		
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		//class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
 		class say3D {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class tazed {};
		class civFetchGear {};
		class civLoadGear {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class zoneCreator {};
		class demoChargeTimer {};
		class hasOrgan {};
		class civInteractionMenu {};
		class restrainciv {};
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class colorVehiclerepaint {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};
	
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class loadGear {};
		class saveGear {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class seizeObjects {}; //incautar objetos
		class breathalyzer {};
		class copOpener {};
		class copEnter {};
	};
	
	class Copeast
	{
		file = "core\copeast";
		class loadGearcopeast {}; //<--- ADD ALL OF THIS IT´S NEW!
		class saveGearcopeast {};
		class copeastInteractionMenu {};//OPFOR
		class copeastSiren {};
		class copeastmarkers {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};
	
	class Groups
	{
		file = "core\groups";
		class createGroup {};
		class groupBrowser {};
		class groupManagement {};
		class groupMenu {};
		class joinGroup {};
		class kickGroup {};
		class leaveGroup {};
		class setGroupLeader {};
		class lockGroup {};
		class unlockGroup {};
		class clientGroupLeader {};
		class clientGroupKick {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class barrera {};
		class barricade {};
		class barrier {};
		class cono {};
		class bier {};
		class mauer {};
		class shovelUse {};
		class drinkbeer {};
		class drinksidra {};
		class speedBomb {};
		class nitro {};
		class bancocentralalarma {};
		class alarmacoche {};
		
	};

	class Drugs
	{
		file = "core\drugs";
		class marijuana {};
		class cocaine {};
		class heroin {};
		class meth {};
		class overdose {};
		class drugUsed {};
	};
	
	class anstrich
	{
		file = "core\repaint";
		
		class RepaintMenu;
		class Repaintcolor;
		class RepaintVehicle;		
	};

	class UnderwaterExploration 
	{
		file = "core\jobs\underwater_exploration";
		class uwExplorationInit {};
		class uwExplorationExplore {};
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
	};
	
	
};