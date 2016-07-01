<%@ page import="java.io.*,java.util.*, javax.servlet.*, java.text.*" %>
<%@ page import="java.util.Date,java.util.Enumeration"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage Results</title>
</head>
<body>
<h1>The results are in...</h1>

<div id="message">

<input type="hidden" name="birthMonth" value="<%= request.getAttribute("birthMonth") %>">
<input type="hidden" name="birthDate" value="<%= request.getAttribute("birthDate") %>">

<p>Your birth month: <%=request.getParameter("birthMonth") %></p>
<p>Your birth date: <%=request.getParameter("birthDate") %></p>

<%! String newBirthMonthVar; int intBirthMonthValue = 0; %>

<% newBirthMonthVar =request.getParameter("birthMonth");%>

<%
if (newBirthMonthVar.equals("January"))
	intBirthMonthValue = 0;
else if (newBirthMonthVar.equals("February"))
	intBirthMonthValue = 1;
else if (newBirthMonthVar.equals("March"))
	intBirthMonthValue = 2;
else if (newBirthMonthVar.equals("April"))
	intBirthMonthValue = 3;
else if (newBirthMonthVar.equals("May"))
	intBirthMonthValue = 4;
else if (newBirthMonthVar.equals("June"))
	intBirthMonthValue = 5;
else if (newBirthMonthVar.equals("July"))
	intBirthMonthValue = 6;
else if (newBirthMonthVar.equals("August"))
	intBirthMonthValue = 7;
else if (newBirthMonthVar.equals("September"))
	intBirthMonthValue = 8;	
else if (newBirthMonthVar.equals("October"))
	intBirthMonthValue = 9;
else if (newBirthMonthVar.equals("November"))
	intBirthMonthValue = 10;
else if (newBirthMonthVar.equals("December"))
	intBirthMonthValue = 11;
%>

<p>Printing intBirthMonthValue : <%=intBirthMonthValue %></p>

<%
String famousPeopleNames[];
famousPeopleNames = new String[366];
famousPeopleNames[0] = "Paul Revere"; //January 1
famousPeopleNames[1] = "Cuba Gooding Jr.";
famousPeopleNames[2] = "Mel Gibson";
famousPeopleNames[3] = "Sir Isaac Newton";
famousPeopleNames[4] = "Bradley Cooper";
famousPeopleNames[5] = "Norman Reedus";
famousPeopleNames[6] = "Nicolas Cage";
famousPeopleNames[7] = "Elvis Presley";
famousPeopleNames[8] = "Kate Middleton";
famousPeopleNames[9] = "Rod Stewart";
famousPeopleNames[10] = "Mary J. Blige";
famousPeopleNames[11] = "Howard Stern";
famousPeopleNames[12] = "Orlando Bloom";
famousPeopleNames[13] = "Jason Bateman";
famousPeopleNames[14] = "Martin Luther King, Jr.";
famousPeopleNames[15] = "Albert Pujols";
famousPeopleNames[16] = "Betty White";
famousPeopleNames[17] = "Kevin Costner";
famousPeopleNames[18] = "Dolly Parton";
famousPeopleNames[19] = "Rainn Wilson";
famousPeopleNames[20] = "Hakeem Olajuwon";
famousPeopleNames[21] = "Guy Fieri";
famousPeopleNames[22] = "Mariska Hargitay";
famousPeopleNames[23] = "Neil Diamond";
famousPeopleNames[24] = "Alicia Keys";
famousPeopleNames[25] = "Ellen DeGeneres";
famousPeopleNames[26] = "Wolfgang Amadeus Mozart";
famousPeopleNames[27] = "Elijah Wood";
famousPeopleNames[28] = "Oprah Winfrey";
famousPeopleNames[29] = "Christian Bale";
famousPeopleNames[30] = "Justin Timberlake"; //January 31
famousPeopleNames[31] = "Michael C. Hall"; //February 1
famousPeopleNames[32] = "Christie Brinkley";
famousPeopleNames[33] = "Norman Rockwell";
famousPeopleNames[34] = "Rosa Parks";
famousPeopleNames[35] = "Cristiano Ronaldo";
famousPeopleNames[36] = "Babe Ruth";
famousPeopleNames[37] = "Garth Brooks";
famousPeopleNames[38] = "Seth Green";
famousPeopleNames[39] = "Charlie Day";
famousPeopleNames[40] = "Elizabeth Banks";
famousPeopleNames[41] = "Jennifer Aniston";
famousPeopleNames[42] = "Abraham Lincoln";
famousPeopleNames[43] = "Jerry Springer";
famousPeopleNames[44] = "Michael Bloomberg";
famousPeopleNames[45] = "Galileo Galilei";
famousPeopleNames[46] = "Christopher Eccleston";
famousPeopleNames[47] = "Michael Jordan";
famousPeopleNames[48] = "John Travolta";
famousPeopleNames[49] = "Seal";
famousPeopleNames[50] = "Cindy Crawford";
famousPeopleNames[51] = "Alan Rickman";
famousPeopleNames[52] = "George Washington";
famousPeopleNames[53] = "Aziz Ansari";
famousPeopleNames[54] = "Steve Jobs";
famousPeopleNames[55] = "Rashida Jones";
famousPeopleNames[56] = "Johnny Cash";
famousPeopleNames[57] = "J Woww";
famousPeopleNames[58] = "Jason Aldean";
famousPeopleNames[59] = "Ja Rule"; //February 29
famousPeopleNames[60] = "Justin Bieber"; //March 1
famousPeopleNames[61] = "Jon Bon Jovi";
famousPeopleNames[62] = "Jessica Biel";
famousPeopleNames[63] = "Landon Donovan";
famousPeopleNames[64] = "Eva Mendes";
famousPeopleNames[65] = "Shaquille O'Neal";
famousPeopleNames[66] = "Bryan Cranston";
famousPeopleNames[67] = "Freddie Prinze Jr.";
famousPeopleNames[68] = "Brittany Snow";
famousPeopleNames[69] = "Chuck Norris";
famousPeopleNames[70] = "Johnny Knoxville";
famousPeopleNames[71] = "Christina Grimmie";
famousPeopleNames[72] = "Leigh-Allyn Baker";
famousPeopleNames[73] = "Albert Einstein";
famousPeopleNames[74] = "Eva Longoria";
famousPeopleNames[75] = "Flavor Flav";
famousPeopleNames[76] = "Rob Lowe";
famousPeopleNames[77] = "Adam Levine";
famousPeopleNames[78] = "Bruce Willis";
famousPeopleNames[79] = "Spike Lee";
famousPeopleNames[80] = "Rosie O'Donnell";
famousPeopleNames[81] = "Reese Witherspoon";
famousPeopleNames[82] = "Ben Higgins";
famousPeopleNames[83] = "Peyton Manning";
famousPeopleNames[84] = "Elton John";
famousPeopleNames[85] = "Keira Knightley";
famousPeopleNames[86] = "Quentin Tarantino";
famousPeopleNames[87] = "Lady Gaga";
famousPeopleNames[88] = "Scott Wilson";
famousPeopleNames[89] = "Vincent van Gogh";
famousPeopleNames[90] = "Christopher Walken"; // March 31
famousPeopleNames[91] = "Kip Moore"; // April 1
famousPeopleNames[92] = "Bobby Bones";
famousPeopleNames[93] = "Eddie Murphy";
famousPeopleNames[94] = "Robert Downey Jr.";
famousPeopleNames[95] = "Pharrell Williams";
famousPeopleNames[96] = "Paul Rudd";
famousPeopleNames[97] = "Russell Crowe";
famousPeopleNames[98] = "Chris Kyle";
famousPeopleNames[99] = "Kristen Stewart";
famousPeopleNames[100] = "Mandy Moore";
famousPeopleNames[101] = "Alessandra Ambrosio";
famousPeopleNames[102] = "David Letterman";
famousPeopleNames[103] = "Thomas Jefferson";
famousPeopleNames[104] = "Pete Rose";
famousPeopleNames[105] = "Seth Rogan";
famousPeopleNames[106] = "Charlie Chaplin";
famousPeopleNames[107] = "Maynard James Keenan";
famousPeopleNames[108] = "Conan O'Brien";
famousPeopleNames[109] = "James Franco";
famousPeopleNames[110] = "Carmen Electra";
famousPeopleNames[111] = "Tony Romo";
famousPeopleNames[112] = "Jack Nicholson";
famousPeopleNames[113] = "John Cena";
famousPeopleNames[114] = "Barbra Streisand";
famousPeopleNames[115] = "Al Pacino";
famousPeopleNames[116] = "Channing Tatum";
famousPeopleNames[117] = "Casey Kasem";
famousPeopleNames[118] = "Jessica Alba";
famousPeopleNames[119] = "Jerry Seinfeld";
famousPeopleNames[120] = "Kirsten Dunst"; // April 30
famousPeopleNames[121] = "Tim McGraw"; // May 1
famousPeopleNames[122] = "David Beckham";
famousPeopleNames[123] = "Eric Church";
famousPeopleNames[124] = "Audrey Hepburn";
famousPeopleNames[125] = "Chris Brown";
famousPeopleNames[126] = "George Clooney";
famousPeopleNames[127] = "Brecklin Meyer";
famousPeopleNames[128] = "Enrique Iglesias";
famousPeopleNames[129] = "Roasario Dawson";
famousPeopleNames[130] = "Bono";
famousPeopleNames[131] = "Salvador Dali";
famousPeopleNames[132] = "Tony Hawk";
famousPeopleNames[133] = "Stevie Wonder";
famousPeopleNames[134] = "Mark Zuckerberg";
famousPeopleNames[135] = "Emmitt Smith";
famousPeopleNames[136] = "Megan Fox";
famousPeopleNames[137] = "Bob Saget";
famousPeopleNames[138] = "Tina Fey";
famousPeopleNames[139] = "Sam Smith";
famousPeopleNames[140] = "Cher";
famousPeopleNames[141] = "Mr. T";
famousPeopleNames[142] = "Naomi Campbell";
famousPeopleNames[143] = "Drew Carey";
famousPeopleNames[144] = "Bob Dylan";
famousPeopleNames[145] = "Mike Myers";
famousPeopleNames[146] = "Lenny Kravitz";
famousPeopleNames[147] = "Andre 3000";
famousPeopleNames[148] = "Colbie Caillat";
famousPeopleNames[149] = "Daniel Tosh";
famousPeopleNames[150] = "CeeLo Green";
famousPeopleNames[151] = "Clint Eastwood"; // May 31
famousPeopleNames[152] = "Morgan Freeman"; // June 1
famousPeopleNames[153] = "Beetlejuice";
famousPeopleNames[154] = "Rafael Nadal";
famousPeopleNames[155] = "Angelina Jolie";
famousPeopleNames[156] = "Mark Wahlberg";
famousPeopleNames[157] = "Diego Velazquez";
famousPeopleNames[158] = "Prince";
famousPeopleNames[159] = "Kanye West";
famousPeopleNames[160] = "Johnny Depp";
famousPeopleNames[161] = "Kate Upton";
famousPeopleNames[162] = "Shia LeBeouf";
famousPeopleNames[163] = "George Bush";
famousPeopleNames[164] = "Mary Kate & Ashley Olsen";
famousPeopleNames[165] = "Donald Trump";
famousPeopleNames[166] = "Courteney Cox";
famousPeopleNames[167] = "2Pac";
famousPeopleNames[168] = "Venus Williams";
famousPeopleNames[169] = "Paul McCartney";
famousPeopleNames[170] = "Lou Gehrig";
famousPeopleNames[171] = "Nicole Kidman";
famousPeopleNames[172] = "Chris Pratt";
famousPeopleNames[173] = "Meryl Streep";
famousPeopleNames[174] = "Jason Mraz";
famousPeopleNames[175] = "Lionel Messi";
famousPeopleNames[176] = "George Michael";
famousPeopleNames[177] = "Ariana Grande";
famousPeopleNames[178] = "Khloe Kardashian";
famousPeopleNames[179] = "Rob Dyrdek";
famousPeopleNames[180] = "Gary Busey";
famousPeopleNames[181] = "Mike Tyson"; // June 30
famousPeopleNames[182] = "Princess Diana"; // July 1
famousPeopleNames[183] = "Lindsay Lohan";
famousPeopleNames[184] = "Tom Cruise";
famousPeopleNames[185] = "Gloria Stuart";
famousPeopleNames[186] = "Judge Joe Brown";
famousPeopleNames[187] = "Sylvester Stallone";
famousPeopleNames[188] = "Ringo Starr";
famousPeopleNames[189] = "Kevin Bacon";
famousPeopleNames[190] = "Tom Hanks";
famousPeopleNames[191] = "Jessica Simpson";
famousPeopleNames[192] = "Giorgio Armani";
famousPeopleNames[193] = "Bill Cosby";
famousPeopleNames[194] = "Harrison Ford";
famousPeopleNames[195] = "Jane Lynch";
famousPeopleNames[196] = "Gabriel Iglesias";
famousPeopleNames[197] = "Will Ferrell";
famousPeopleNames[198] = "David Hasselhoff";
famousPeopleNames[199] = "Vin Diesel";
famousPeopleNames[200] = "Brian May";
famousPeopleNames[201] = "Julianne Hough";
famousPeopleNames[202] = "Robin Williams";
famousPeopleNames[203] = "Selena Gomez";
famousPeopleNames[204] = "Daniel Radcliffe";
famousPeopleNames[205] = "Jennifer Lopez";
famousPeopleNames[206] = "Matt LeBlanc";
famousPeopleNames[207] = "Sandra Bullock";
famousPeopleNames[208] = "Alex Rodriguez";
famousPeopleNames[209] = "Lori Loughlin";
famousPeopleNames[210] = "Josh Radnor";
famousPeopleNames[211] = "Christopher Nolan";
famousPeopleNames[212] = "JK Rowling"; // July 31
famousPeopleNames[213] = "Francis Scott Key"; // August 1
famousPeopleNames[214] = "Wes Craven";
famousPeopleNames[215] = "Tom Brady";
famousPeopleNames[216] = "Barack Obama";
famousPeopleNames[217] = "Neil Armstrong";
famousPeopleNames[218] = "Geri Halliwell";
famousPeopleNames[219] = "Charlize Theron";
famousPeopleNames[220] = "Dustin Hoffman";
famousPeopleNames[221] = "Anna Kendrick";
famousPeopleNames[222] = "Antonio Banderas";
famousPeopleNames[223] = "Steve Wozniak";
famousPeopleNames[224] = "Mario Balotelli";
famousPeopleNames[225] = "Alfred Hitchcock";
famousPeopleNames[226] = "Steve Martin";
famousPeopleNames[227] = "Jennifer Lawrence";
famousPeopleNames[228] = "Steve Carell";
famousPeopleNames[229] = "Sean Penn";
famousPeopleNames[230] = "Patrick Swayze";
famousPeopleNames[231] = "Bill Clinton";
famousPeopleNames[232] = "Demi Lovato";
famousPeopleNames[233] = "Hayden Panettiere";
famousPeopleNames[234] = "Kristen Wiig";
famousPeopleNames[235] = "Kobe Bryant";
famousPeopleNames[236] = "Rupert Grint";
famousPeopleNames[237] = "Blake Lively";
famousPeopleNames[238] = "Mother Teresa";
famousPeopleNames[239] = "Aaron Paul";
famousPeopleNames[240] = "Jack Black";
famousPeopleNames[241] = "Michael Jackson";
famousPeopleNames[242] = "Cameron Diaz";
famousPeopleNames[243] = "Chris Tucker"; // August 31
famousPeopleNames[244] = "Dr. Phil"; // September 1
famousPeopleNames[245] = "Keanu Reeves";
famousPeopleNames[246] = "Charlie Sheen";
famousPeopleNames[247] = "Beyonce Knowles";
famousPeopleNames[248] = "Michael Keaton";
famousPeopleNames[249] = "Jeff Foxworthy";
famousPeopleNames[250] = "Buddy Holly";
famousPeopleNames[251] = "Jonathan Taylor Thomas";
famousPeopleNames[252] = "Adam Sandler";
famousPeopleNames[253] = "Arnold Palmer";
famousPeopleNames[254] = "Ludacris";
famousPeopleNames[255] = "Paul Walker";
famousPeopleNames[256] = "Ben Savage";
famousPeopleNames[257] = "Andrew Lincoln";
famousPeopleNames[258] = "Tom Hardy";
famousPeopleNames[259] = "David Copperfield";
famousPeopleNames[260] = "Baz Luhrmann";
famousPeopleNames[261] = "Lance Armstrong";
famousPeopleNames[262] = "Jimmy Fallon";
famousPeopleNames[263] = "Phillip Phillips";
famousPeopleNames[264] = "Bill Murray";
famousPeopleNames[265] = "Bonnie Hunt";
famousPeopleNames[266] = "Bruce Springsteen";
famousPeopleNames[267] = "Ben Platt";
famousPeopleNames[268] = "Will Smith";
famousPeopleNames[269] = "Olivia Newton-John";
famousPeopleNames[270] = "Gwyneth Paltrow";
famousPeopleNames[271] = "Hilary Duff";
famousPeopleNames[272] = "Kevin Durant";
famousPeopleNames[273] = "T-Pain"; // September 30
famousPeopleNames[274] = "Zach Galifianakis"; // October 1
famousPeopleNames[275] = "Sting";
famousPeopleNames[276] = "Gwen Stefani";
famousPeopleNames[277] = "Christopher Waltz";
famousPeopleNames[278] = "Kate Winslet";
famousPeopleNames[279] = "Ioan Gruffudd";
famousPeopleNames[280] = "Simon Cowell";
famousPeopleNames[281] = "Matt Damon";
famousPeopleNames[282] = "John Lennon";
famousPeopleNames[283] = "Mario Lopez";
famousPeopleNames[284] = "Matt Bomer";
famousPeopleNames[285] = "Hugh Jackman";
famousPeopleNames[286] = "Jerry Rice";
famousPeopleNames[287] = "Usher";
famousPeopleNames[288] = "Tito Jackson";
famousPeopleNames[289] = "John Mayer";
famousPeopleNames[290] = "Eminem";
famousPeopleNames[291] = "Zac Efron";
famousPeopleNames[292] = "Ty Pennington";
famousPeopleNames[293] = "John Krasinski";
famousPeopleNames[294] = "Kim Kardashian";
famousPeopleNames[295] = "Shaggy";
famousPeopleNames[296] = "Ryan Reynolds";
famousPeopleNames[297] = "Drake";
famousPeopleNames[298] = "Pablo Picasso";
famousPeopleNames[299] = "Keith Urban";
famousPeopleNames[300] = "Theodore Roosevelt";
famousPeopleNames[301] = "Julia Roberts";
famousPeopleNames[302] = "Winona Ryder";
famousPeopleNames[303] = "Henry Winkler";
famousPeopleNames[304] = "Christopher Columbus"; // October 31
famousPeopleNames[305] = "Tim Cook"; // November 1
famousPeopleNames[306] = "David Schwimmer";
famousPeopleNames[307] = "Kendall Jenner";
famousPeopleNames[308] = "Matthew McConaughey";
famousPeopleNames[309] = "Bubba Watson";
famousPeopleNames[310] = "Emma Stone";
famousPeopleNames[311] = "David Guetta";
famousPeopleNames[312] = "Sam Bradford";
famousPeopleNames[313] = "Sisqo";
famousPeopleNames[314] = "Brittany Murphy";
famousPeopleNames[315] = "Leonardo DiCaprio";
famousPeopleNames[316] = "Ryan Gosling";
famousPeopleNames[317] = "Jimmy Kimmel";
famousPeopleNames[318] = "Josh Duhamel";
famousPeopleNames[319] = "Lily Aldridge";
famousPeopleNames[320] = "Bruno Amato";
famousPeopleNames[321] = "Rachel McAdams";
famousPeopleNames[322] = "Owen Wilson";
famousPeopleNames[323] = "Calvin Klein";
famousPeopleNames[324] = "Dierks Bentley";
famousPeopleNames[325] = "Michael Strahan";
famousPeopleNames[326] = "Scarlett Johansson";
famousPeopleNames[327] = "Miley Cyrus";
famousPeopleNames[328] = "Katherine Heigl";
famousPeopleNames[329] = "Christina Applegate";
famousPeopleNames[330] = "Matt Carpenter";
famousPeopleNames[331] = "Bruce Lee";
famousPeopleNames[332] = "Ed Harris";
famousPeopleNames[333] = "Anna Faris";
famousPeopleNames[334] = "Ben Stiller"; // November 30
famousPeopleNames[335] = "Woody Allen"; // December 1
famousPeopleNames[336] = "Britney Spears";
famousPeopleNames[337] = "Amanda Seyfried";
famousPeopleNames[338] = "Tyra Banks";
famousPeopleNames[339] = "Walt Disney";
famousPeopleNames[340] = "Johnny Manziel";
famousPeopleNames[341] = "Larry Bird";
famousPeopleNames[342] = "Nicki Minaj";
famousPeopleNames[343] = "Simon Helberg";
famousPeopleNames[344] = "Bobby Flay";
famousPeopleNames[345] = "Rider Strong";
famousPeopleNames[346] = "Frank Sinatra";
famousPeopleNames[347] = "Taylor Swift";
famousPeopleNames[348] = "Vanessa Hudgens";
famousPeopleNames[349] = "Adam Brody";
famousPeopleNames[350] = "Benjamin Bratt";
famousPeopleNames[351] = "Manny Pacquiao";
famousPeopleNames[352] = "Brad Pitt";
famousPeopleNames[353] = "Jake Gyllenhaal";
famousPeopleNames[354] = "Jonah Hill";
famousPeopleNames[355] = "Samuel L. Jackson";
famousPeopleNames[356] = "Meghan Trainor";
famousPeopleNames[357] = "T.J. Oshie";
famousPeopleNames[358] = "Ryan Seacrest";
famousPeopleNames[359] = "Jimmy Buffet";
famousPeopleNames[360] = "Jared Leto";
famousPeopleNames[361] = "Jamaal Charles";
famousPeopleNames[362] = "John Legend";
famousPeopleNames[363] = "Jude Law";
famousPeopleNames[364] = "Tiger Woods"; 
famousPeopleNames[365] = "Psy"; //December 31
%>

<!-- Convert user's input of birthDate variable to an integer -->

<% int intBirthDate=Integer.parseInt(request.getParameter("birthDate")); %>

<!-- Calculate the day of the year based off birth month and birth day as input by user -->

<% 
	Date dNow = new Date(2016,intBirthMonthValue,intBirthDate);
	SimpleDateFormat ft = new SimpleDateFormat ("D");
	out.print("<p>Day of year you were born: " +ft.format(dNow)+"</p>");
%>

<!-- Convert day of year from type Date to String to int -->
<!-- TO DO: Rename a few of these variables to better reflect day of year values -->

<%! String dateToString; %>
<%! int dateToInt = 0; %> <!-- initialize dateToInt variable so that it resets before each iteration -->
<% dateToString = ft.format(dNow).toString(); %> <!-- convert dNow variable from type Date to type String -->
<% int dateToInt = Integer.parseInt(dateToString); %> <!-- convert dateToString variable from type String to type int for use in if else & array -->

<h2> <%=famousPeopleNames[dateToInt-1]%> shares your birthday! </h2>

<%=request.getParameter("famousPerson")%>

<%! String ZodiacSign; %>

<%
	if(dateToInt >= 20 && dateToInt <= 49)
		ZodiacSign = "Aquarius";
	if(dateToInt >= 50 && dateToInt <= 80)
		ZodiacSign = "Pisces";
	if(dateToInt >= 81 && dateToInt <= 110)
		ZodiacSign = "Aries";
	if(dateToInt >= 111 && dateToInt <= 141)
		ZodiacSign = "Taurus";
	if(dateToInt >= 142 && dateToInt <= 172)
		ZodiacSign = "Gemini";
	if(dateToInt >= 173 && dateToInt <= 204)
		ZodiacSign = "Cancer";
	if(dateToInt >= 205 && dateToInt <= 235)
		ZodiacSign = "Leo";
	if(dateToInt >= 236 && dateToInt <= 266)
		ZodiacSign = "Virgo";
	if(dateToInt >= 267 && dateToInt <= 296)
		ZodiacSign = "Libra";
	if(dateToInt >= 297 && dateToInt <= 326)
		ZodiacSign = "Scorpio";
	if(dateToInt >= 327 && dateToInt <= 356)
		ZodiacSign = "Sagittarious";
	if(dateToInt >= 357 || dateToInt <= 19)
		ZodiacSign = "Capricorn";
%>

<h2>Your Zodiac sign: <%=ZodiacSign%> </h2>

<a href = "http://localhost:8080/CelebrityBirthdaysVersion1/homepage.jsp">Go back</a> <!-- TO DO: Make this a button -->

</div>

</body>
</html>