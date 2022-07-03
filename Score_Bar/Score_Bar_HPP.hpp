class RscScoreBar
{
	idd = -1;
	duration = 10000000000;
	onLoad = "uiNamespace setVariable ['RscScoreBar', _this select 0];";
	fadein = 0;
	fadeout = 0;
	movingEnable = 0;
	objects[] = {};
	
	class controls
	{
		class scoreBarText
		{
			idc = 55559;
			x = 0 * safezoneW + safezoneX;
			y = 0.06 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			shadow = 1;
			font = "EtelkaMonospaceProBold";
			size = "0.022 * safezoneH";
			type = 13;
			style = 2;
			text = "";
			
			class Attributes
			{
				align="center";
				color = "#ffffff";
				font = "EtelkaMonospaceProBold";
			};
		};
		class scoreBarTime
		{
			idc = 55558;
			x = 0 * safezoneW + safezoneX;
			y = 0.1 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			shadow = 1;
			font = "EtelkaMonospaceProBold";
			size = "0.022 * safezoneH";
			type = 13;
			style = 2;
			text = "";
			
			class Attributes
			{
				align="center";
				color = "#ffffff";
				font = "EtelkaMonospaceProBold";
			};
		};
	};
};
class RscGameTitle
{
	idd = -1;
	duration = 5;
	onLoad = "uiNamespace setVariable ['RscGameTitle', _this select 0];";
	fadein = 0.5;
	fadeout = 1;
	movingEnable = 0;
	objects[] = {};
	
	class controls
	{
		class sideIcon
		{
			idc = 55557;
			x = 0 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			shadow = 1;
			font = "EtelkaMonospaceProBold";
			size = "0.05 * safezoneH";
			type = 13;
			style = 2;
			text = "";
			
			class Attributes
			{
				align="center";
				color = "#ffffff";
				font = "EtelkaMonospaceProBold";
			};
		};
		class gameTitle
		{
			idc = 55556;
			x = 0 * safezoneW + safezoneX;
			y = 0.35 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			shadow = 1;
			font = "EtelkaMonospaceProBold";
			size = "0.05 * safezoneH";
			type = 13;
			style = 2;
			text = "";
			
			class Attributes
			{
				align="center";
				color = "#ffffff";
				font = "EtelkaMonospaceProBold";
			};
		};
		class gameDescription
		{
			idc = 55555;
			x = 0 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 1 * safezoneW;
			h = 1 * safezoneH;
			shadow = 1;
			font = "EtelkaMonospaceProBold";
			size = "0.02 * safezoneH";
			type = 13;
			style = 2;
			text = "";
			
			class Attributes
			{
				align="center";
				color = "#ffffff";
				font = "EtelkaMonospaceProBold";
			};
		};
	};
};
