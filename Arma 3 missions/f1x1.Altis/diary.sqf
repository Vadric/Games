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

player createDiaryRecord ["Diary",["Intentions",
"<font color='#e6e600' size='16' face='PuristaMedium'>
Find help at the Sanctuary.
<br/> 
Arm Yourself.
<br/> 
Seek revenge for your loved ones.
<br/> 
Find the cure.
<br/> 
Escape with your lives.
</font>"]];

player createDiaryRecord ["Diary",["Rumors",
"<font color='#e6e600' size='16' face='PuristaMedium'>
All who go into the ocean drown.
<br/> 
A great wall has been sighted.
<br/> 
There is a cure.
<br/> 
There is no fuel on the island, only low grade kerosene which gives about 16m/L.
<br/> 
The island is populated with hunters and morphine addicts.
</font>"]];

player createDiaryRecord ["Diary",["Events",
"<font color='#b32400' size='18' face='TahomaB'>
Evil is sweeping the land.
</font>
<br/> 
<br/> 
<font color='#00cc44' size='16' face='PuristaMedium'>
Loud noises have been heard at night for the past weeks. Word has spread of violence and sickness. Soldiers came in the night and took all your loved ones. You and some townsfolk managed to escape capture, gathering in the countryside. You've heard the junkyard has been fortified into a sanctuary. Follow the sunset.
</font>
"]];



