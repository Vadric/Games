if (!hasInterface) exitWith {};
waitUntil {!isNull player};

/*
modifiers, links, and font options
<marker name='marker_name'>text with link</marker>
<img image='Image file name jpeg or paa' />
<font color='#FF0000' size='14' face='vbs2_digital'>Text you want in this font</font>
<br/> New Line

http://www.w3schools.com/colors/colors_picker.asp

https://community.bistudio.com/wikidata/images/archive/0/0e/20140217182059%21Arma3Fonts.png
*/



player createDiaryRecord ["Diary",["ROE",
"<font color='#990000' size='16' face='PuristaMedium'>
You've been authorized to use everything at your disposal. 
<br/> 
JTAC can call supply drops.
<br/> 
Vehicles available at depot.
</font>
"]];

player createDiaryRecord ["Diary",["SitRep",
"<font color='#1a75ff' size='18' face='TahomaB'>
Charlie waits in the trees.
</font>
<br/> 
<br/> 
<font color='#e6e600' size='16' face='PuristaMedium'>
A unknown nation has sent a guerilla force to claim sovereignty over an established Japanese island. After a failed initial attact they have retreated into the trees. Find their commanders and rout them out.
</font>
"]];
