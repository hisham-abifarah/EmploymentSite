<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.employmentapp.dto.RegesterBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Detail </title>
</head>
<body background="img/background.gif">
<%@include file="header.jsp" %><br><div align="right">

<a href="setting"><img src="img/set.png" height=34 width=34></a></div>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
										
											<tr>
											<td height="65" style="HEIGHT: 65px" vAlign="top">&nbsp;&nbsp; Job Category:</td>
												<td valign="top" style="HEIGHT: 65px">
													<select size="5" name="ctrlSearch$category" multiple="multiple" id="ctrlSearch_category" class="FormField">
	
	<option value="8">Accounting/Finance</option>
	<option value="18">Advertising/Public Relations</option>
	<option value="2">Architecture &amp; Design</option>
	<option value="24">Arts/Entertainment/Publishing</option>
	<option value="3">Banking/Mortgage</option>
	<option value="1">Clerical/Administrative</option>
	<option value="9">Construction/Facilities</option>
	<option value="27">Consultancy</option>
	<option value="6">Education/Training</option>
	<option value="11">Engineering</option>
	<option value="31">Enviromental</option>
	<option value="33">Event Management</option>
	<option value="4">Government</option>
	<option value="7">Health Care/Pharmaceutical</option>
	<option value="23">Hospitality/Travel</option>
	<option value="32">Human Resource</option>
	<option value="10">Information Technology</option>
	<option value="14">Law Enforcement/Security</option>
	<option value="25">Legal</option>
	<option value="12">Management Consulting</option>
	<option value="17">Manufacturing/Operations</option>
	<option value="28">Marketing</option>
	<option value="5">Non-Profit/Volunteer</option>
	<option value="34">Nursing</option>
	<option value="15">Other</option>
	<option value="19">Restaurant/Food Service</option>
	<option value="16">Sales</option>
	<option value="29">Sales-Retail</option>
	<option value="13">Science/Technology</option>
	<option value="30">Senior Management</option>
	<option value="20">Sport/Recreation</option>
	<option value="21">Telecommunications</option>
	<option value="22">Transportation/Logistics</option>

</select> 
<br />

												</td>
											</tr>
											<br>
											<tr>
												<td height="27">
													&nbsp;&nbsp; Employee Type:<br>
												</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td >
																<table id="ctrlSearch_type" border="0">
	<tr>
		<td><input id="ctrlSearch_type_0" type="radio" name="ctrlSearch$type" value="" checked="checked" /><label for="ctrlSearch_type_0">All</label></td><td><input id="ctrlSearch_type_1" type="radio" name="ctrlSearch$type" value="1" /><label for="ctrlSearch_type_1">Employee</label></td><td><input id="ctrlSearch_type_2" type="radio" name="ctrlSearch$type" value="0" /><label for="ctrlSearch_type_2">Intern</label></td><td><input id="ctrlSearch_type_3" type="radio" name="ctrlSearch$type" value="2" /><label for="ctrlSearch_type_3">Temp/Contract/Project</label></td>
	</tr>
</table>
															</td>
															
														</tr>
													</table>
												</td>
											</tr>
											
											
		
											
									
											<tr>
												<td height="27">&nbsp;&nbsp;&nbsp;Job Duration:</td>
												<td valign="top">
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td >
																<table id="ctrlSearch_duration" border="0">
	<tr>
		<td><input id="ctrlSearch_duration_0" type="radio" name="ctrlSearch$duration" value="" checked="checked" /><label for="ctrlSearch_duration_0">All</label></td><td><input id="ctrlSearch_duration_1" type="radio" name="ctrlSearch$duration" value="1" /><label for="ctrlSearch_duration_1">Full-Time</label></td><td><input id="ctrlSearch_duration_2" type="radio" name="ctrlSearch$duration" value="0" /><label for="ctrlSearch_duration_2">Part-Time</label></td>
	</tr>
</table>
															</td>
															
														</tr>
													</table>
												</td>
											</tr>
											
										
											<tr>
	 											<td height="27" vAlign="top">&nbsp; &nbsp;Job Location:</td>
												<td>
													<select size="5" name="ctrlSearch$country" multiple="multiple" id="ctrlSearch_country" class="FormField">
	
	<option value="371">Afghanistan</option>
	<option value="2">Albania</option>
	<option value="3">Algeria</option>
	<option value="240">Algeria - Algiers</option>
	<option value="4">American Samoa</option>
	<option value="5">Andorra</option>
	<option value="6">Angola</option>
	<option value="7">Anguilla</option>
	<option value="8">Antarctica</option>
	<option value="9">Antigua and Barbuda</option>
	<option value="10">Argentina</option>
	<option value="11">Armenia</option>
	<option value="12">Aruba</option>
	<option value="13">Australia</option>
	<option value="304">Australia - Adelaide</option>
	<option value="306">Australia - Brisbane</option>
	<option value="307">Australia - Canberra</option>
	<option value="302">Australia - Gold Coast</option>
	<option value="303">Australia - Melbourne</option>
	<option value="305">Australia - Newcastle</option>
	<option value="300">Australia - Perth</option>
	<option value="301">Australia - Sydney</option>
	<option value="14">Austria</option>
	<option value="15">Azerbaidjan</option>
	<option value="16">Bahamas</option>
	<option value="17">Bahrain</option>
	<option value="248">Bahrain - Manama</option>
	<option value="18">Banglades</option>
	<option value="19">Barbados</option>
	<option value="20">Belarus</option>
	<option value="21">Belgium</option>
	<option value="22">Belize</option>
	<option value="23">Benin</option>
	<option value="24">Bermuda</option>
	<option value="25">Bolivia</option>
	<option value="26">Bosnia-Herzegovina</option>
	<option value="27">Botswana</option>
	<option value="28">Bouvet Island</option>
	<option value="29">Brazil</option>
	<option value="30">British Indian O. Terr.</option>
	<option value="31">Brunei Darussalam</option>
	<option value="32">Bulgaria</option>
	<option value="33">Burkina Faso</option>
	<option value="34">Burundi</option>
	<option value="35">Buthan</option>
	<option value="36">Cambodia</option>
	<option value="37">Cameroon</option>
	<option value="38">Canada</option>
	<option value="290">Canada - Alberta</option>
	<option value="291">Canada - Britch Columbia</option>
	<option value="292">Canada - Manitoba</option>
	<option value="293">Canada - New Brunswick</option>
	<option value="294">Canada - NorthWest Territories</option>
	<option value="295">Canada - Nova Scotia</option>
	<option value="296">Canada - Nunavut</option>
	<option value="297">Canada - Ontario</option>
	<option value="298">Canada - Quebec</option>
	<option value="299">Canada - Saskatchewan</option>
	<option value="39">Cape Verde</option>
	<option value="40">Cayman Islands</option>
	<option value="41">Central African Rep.</option>
	<option value="42">Chad</option>
	<option value="43">Chile</option>
	<option value="44">China</option>
	<option value="45">Christmas Island</option>
	<option value="46">Cocos (Keeling) Isl.</option>
	<option value="47">Colombia</option>
	<option value="48">Comoros</option>
	<option value="49">Congo</option>
	<option value="50">Cook Islands</option>
	<option value="51">Costa Rica</option>
	<option value="52">Croatia</option>
	<option value="53">Cuba</option>
	<option value="54">Cyprus</option>
	<option value="55">Czech Republic</option>
	<option value="56">Czechoslovakia</option>
	<option value="57">Denmark</option>
	<option value="58">Djibouti</option>
	<option value="59">Dominica</option>
	<option value="60">Dominican Republic</option>
	<option value="61">East Timor</option>
	<option value="62">Ecuador</option>
	<option value="63">Egypt</option>
	<option value="64">El Salvador</option>
	<option value="65">Equatorial Guinea</option>
	<option value="66">Estonia</option>
	<option value="67">Ethiopia</option>
	<option value="249">Eygpt - Alexandria</option>
	<option value="250">Eygpt - Cairo</option>
	<option value="68">Falkland Isl.(UK)</option>
	<option value="69">Faroe Islands</option>
	<option value="70">Fiji</option>
	<option value="71">Finland</option>
	<option value="72">France</option>
	<option value="73">France (European Ter.)</option>
	<option value="74">French Southern Terr.</option>
	<option value="75">Gabon</option>
	<option value="76">Gambia</option>
	<option value="77">Georgia</option>
	<option value="78">Germany</option>
	<option value="79">Ghana</option>
	<option value="80">Gibraltar</option>
	<option value="81">Great Britain (UK)</option>
	<option value="82">Greece</option>
	<option value="83">Greenland</option>
	<option value="84">Grenada</option>
	<option value="85">Guadeloupe (Fr.)</option>
	<option value="86">Guam (US)</option>
	<option value="87">Guatemala</option>
	<option value="88">Guinea</option>
	<option value="89">Guinea Bissau</option>
	<option value="90">Guyana</option>
	<option value="91">Guyana (Fr.)</option>
	<option value="92">Haiti</option>
	<option value="93">Heard &amp; McDonald Isl.</option>
	<option value="94">Honduras</option>
	<option value="95">Hong Kong</option>
	<option value="96">Hungary</option>
	<option value="97">Iceland</option>
	<option value="98">India</option>
	<option value="99">Indonesia</option>
	<option value="100">Iran</option>
	<option value="101">Iraq</option>
	<option value="251">Iraq - Al Basrah</option>
	<option value="253">Iraq - Arbil</option>
	<option value="252">Iraq - Baghdad</option>
	<option value="102">Ireland</option>
	<option value="103">Italy</option>
	<option value="104">Ivory Coast</option>
	<option value="105">Jamaica</option>
	<option value="106">Japan</option>
	<option value="107">Jordan</option>
	<option value="254">Jordan - Amman</option>
	<option value="255">Jordan - Aqaba</option>
	<option value="256">Jordan - Irbid</option>
	<option value="257">Jordan - Zarqa</option>
	<option value="316">Kazachstan</option>
	<option value="109">Kenya</option>
	<option value="110">Kirgistan</option>
	<option value="111">Kiribati</option>
	<option value="112">Korea (North)</option>
	<option value="113">Korea (South)</option>
	<option value="114">Kuwait</option>
	<option value="115">Laos</option>
	<option value="116">Latvia</option>
	<option value="117">Lebanon</option>
	<option value="241">Lebanon - Beirut</option>
	<option value="258">Lebanon - Bekaa</option>
	<option value="259">Lebanon - Saidon</option>
	<option value="260">Lebanon - Tripoli</option>
	<option value="317">Lesotho</option>
	<option value="119">Liberia</option>
	<option value="120">Libya</option>
	<option value="261">Libya - Misurata</option>
	<option value="262">Libya - Tripoli</option>
	<option value="318">Liechtenstein</option>
	<option value="122">Lithuania</option>
	<option value="123">Luxembourg</option>
	<option value="124">Macau</option>
	<option value="125">Madagascar</option>
	<option value="126">Malawi</option>
	<option value="127">Malaysia</option>
	<option value="128">Maldives</option>
	<option value="129">Mali</option>
	<option value="130">Malta</option>
	<option value="131">Marshall Islands</option>
	<option value="132">Martinique (Fr.)</option>
	<option value="133">Mauritania</option>
	<option value="134">Mauritius</option>
	<option value="135">Mexico</option>
	<option value="136">Micronesia</option>
	<option value="137">Moldavia</option>
	<option value="138">Monaco</option>
	<option value="139">Mongolia</option>
	<option value="140">Montserrat</option>
	<option value="141">Morocco</option>
	<option value="264">Morocco - Agadir</option>
	<option value="265">Morocco - Casablanca</option>
	<option value="266">Morocco - Rabat</option>
	<option value="267">Morocco - Tangier</option>
	<option value="319">Mozambique</option>
	<option value="143">Myanmar</option>
	<option value="144">Namibia</option>
	<option value="145">Nauru</option>
	<option value="146">Nepal</option>
	<option value="147">Netherland Antilles</option>
	<option value="148">Netherlands</option>
	<option value="149">Neutral Zone</option>
	<option value="150">New Caledonia (Fr.)</option>
	<option value="151">New Zealand</option>
	<option value="152">Nicaragua</option>
	<option value="153">Niger</option>
	<option value="154">Nigeria</option>
	<option value="155">Niue</option>
	<option value="156">Norfolk Island</option>
	<option value="157">Northern Mariana Isl.</option>
	<option value="158">Norway</option>
	<option value="159">Oman</option>
	<option value="268">Oman - Muscat</option>
	<option value="269">Oman - Zufar</option>
	<option value="239">Other</option>
	<option value="322">Pakistan</option>
	<option value="270">Pakistan - Balouchistan Province</option>
	<option value="271">Pakistan - NWFP</option>
	<option value="272">Pakistan - Punjab Province</option>
	<option value="273">Pakistan - Sind Province</option>
	<option value="323">Palau</option>
	<option value="263">Palestine</option>
	<option value="162">Panama</option>
	<option value="163">Papua New</option>
	<option value="164">Paraguay</option>
	<option value="165">Peru</option>
	<option value="166">Philippines</option>
	<option value="167">Pitcairn</option>
	<option value="168">Poland</option>
	<option value="169">Polynesia (Fr.)</option>
	<option value="170">Portugal</option>
	<option value="171">Puerto Rico (US)</option>
	<option value="172">Qatar</option>
	<option value="274">Qatar - Doha</option>
	<option value="320">Reunion (Fr.)</option>
	<option value="174">Romania</option>
	<option value="175">Russian Federation</option>
	<option value="176">Rwanda</option>
	<option value="177">Saint Lucia</option>
	<option value="178">Samoa</option>
	<option value="179">San Marino</option>
	<option value="180">Saudi Arabia</option>
	<option value="275">Saudi Arabia - Al Madina Al Munawarah</option>
	<option value="327">Saudi Arabia - Dammam</option>
	<option value="276">Saudi Arabia - Eastern Province</option>
	<option value="277">Saudi Arabia - Jeddah</option>
	<option value="279">Saudi Arabia - Makkah Al Mukarramah</option>
	<option value="278">Saudi Arabia - Riyadh</option>
	<option value="315">Senegal</option>
	<option value="235">Serbia &amp; Montenegro</option>
	<option value="182">Seychelles</option>
	<option value="183">Sierra Leone</option>
	<option value="184">Singapore</option>
	<option value="185">Slovak Republic</option>
	<option value="186">Slovenia</option>
	<option value="187">Solomon Islands</option>
	<option value="188">Somalia</option>
	<option value="189">South Africa</option>
	<option value="190">Soviet Union</option>
	<option value="191">Spain</option>
	<option value="192">Sri Lanka</option>
	<option value="193">St. Helena</option>
	<option value="194">St. Pierre &amp; Miquelon</option>
	<option value="195">St. Tome and Principe</option>
	<option value="196">St.Kitts Nevis Anguilla</option>
	<option value="197">St.Vincent &amp; Grenadines</option>
	<option value="198">Sudan</option>
	<option value="284">Sudan - Al Khartoom</option>
	<option value="321">Suriname</option>
	<option value="200">Svalbard &amp; Jan Mayen Is</option>
	<option value="201">Swaziland</option>
	<option value="202">Sweden</option>
	<option value="203">Switzerland</option>
	<option value="204">Syria</option>
	<option value="285">Syria - Aleppo</option>
	<option value="286">Syria - Damascus</option>
	<option value="287">Syria - Hama</option>
	<option value="288">Syria - Hums</option>
	<option value="289">Syria - Latakia</option>
	<option value="324">Tadjikistan</option>
	<option value="206">Taiwan</option>
	<option value="207">Tanzania</option>
	<option value="208">Thailand</option>
	<option value="209">Togo</option>
	<option value="210">Tokelau</option>
	<option value="211">Tonga</option>
	<option value="212">Trinidad &amp; Tobago</option>
	<option value="213">Tunisia</option>
	<option value="280">Tunisia - Hammamat</option>
	<option value="281">Tunisia - Sfax</option>
	<option value="282">Tunisia - Susse</option>
	<option value="283">Tunisia - Tunis</option>
	<option value="325">Turkey</option>
	<option value="215">Turkmenistan</option>
	<option value="216">Turks &amp; Caicos Islands</option>
	<option value="217">Tuvalu</option>
	<option value="218">Uganda</option>
	<option value="219">Ukraine</option>
	<option value="220">United Arab Emirates</option>
	<option value="242">United Arab Emirates - Abu Dhabi</option>
	<option value="243">United Arab Emirates - Ajman</option>
	<option value="244">United Arab Emirates - Dubai</option>
	<option value="245">United Arab Emirates - Fujairah</option>
	<option value="1">United Arab Emirates - Ras Al Khaimah</option>
	<option value="246">United Arab Emirates - Sharjah</option>
	<option value="247">United Arab Emirates - Umm Al Qalwain</option>
	<option value="326">United Kingdom</option>
	<option value="222">United States</option>
	<option value="328">United States - Alabama</option>
	<option value="330">United States - Alaska</option>
	<option value="329">United States - Alasla</option>
	<option value="331">United States - Arizona</option>
	<option value="332">United States - Arkansas</option>
	<option value="333">United States - California</option>
	<option value="334">United States - Colorado</option>
	<option value="335">United States - Connecticut</option>
	<option value="308">United States - DC Metro</option>
	<option value="336">United States - Delaware</option>
	<option value="309">United States - East Coast</option>
	<option value="337">United States - Florida</option>
	<option value="338">United States - Georgia</option>
	<option value="339">United States - Hawaii</option>
	<option value="340">United States - Idaho</option>
	<option value="341">United States - Illinois</option>
	<option value="342">United States - Indiana</option>
	<option value="343">United States - Iowa</option>
	<option value="344">United States - Kansas</option>
	<option value="345">United States - Kentucky</option>
	<option value="346">United States - Louisiana</option>
	<option value="347">United States - Maine</option>
	<option value="348">United States - Maryland</option>
	<option value="349">United States - Massachusettes</option>
	<option value="312">United States - Michigan</option>
	<option value="350">United States - Nebraska</option>
	<option value="351">United States - Nevada</option>
	<option value="352">United States - New Hampshire</option>
	<option value="353">United States - New Jersey</option>
	<option value="354">United States - New Mexico</option>
	<option value="355">United States - New York</option>
	<option value="356">United States - Pennsylvania</option>
	<option value="357">United States - Puerto Rico</option>
	<option value="358">United States - Rhode Island</option>
	<option value="359">United States - South Carolina</option>
	<option value="360">United States - South Dakota</option>
	<option value="361">United States - Tennessee</option>
	<option value="362">United States - Texas</option>
	<option value="364">United States - Utah</option>
	<option value="363">United States - Vermont</option>
	<option value="365">United States - Virgin Islands</option>
	<option value="366">United States - Virginia</option>
	<option value="367">United States - Washington</option>
	<option value="368">United States - West Virginia</option>
	<option value="369">United States - Wisconsin</option>
	<option value="370">United States - Wyoming</option>
	<option value="223">Uruguay</option>
	<option value="224">US Minor outlying Isl.</option>
	<option value="225">Uzbekistan</option>
	<option value="226">Vanuatu</option>
	<option value="227">Vatican City State</option>
	<option value="228">Venezuela</option>
	<option value="229">Vietnam</option>
	<option value="230">Virgin Islands (British)</option>
	<option value="231">Virgin Islands (US)</option>
	<option value="232">Wallis &amp; Futuna Islands</option>
	<option value="233">Western Sahara</option>
	<option value="234">Yemen</option>
	<option value="236">Zaire</option>
	<option value="237">Zambia</option>
	<option value="238">Zimbabwe</option>

</select> 
													<br />
												</td>
											</tr>
											<tr>
												<td height="30" align="center">&nbsp;
												</td>
												<td height="30" valign="bottom">
													<input type="submit" name="ctrlSearch$Btn" value="Search" id="ctrlSearch_Btn" class="Button1" />									</td>


											</tr>
										</table>

</FORM>
</body>
</html>