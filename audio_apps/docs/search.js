/* =============================================================================਍ऀ 吀爀椀猀漀昀琀 䌀䴀匀 圀攀戀 䠀攀氀瀀 匀挀爀椀瀀琀 瘀㄀⸀　ഀഀ
	਍ऀ 䌀漀瀀礀爀椀最栀琀 ⠀挀⤀ ㈀　　㠀ⴀ㈀　　㤀 匀䐀䰀 吀爀椀猀漀昀琀 ⠀栀琀琀瀀㨀⼀⼀眀眀眀⸀琀爀椀猀漀昀琀挀洀猀⸀挀漀洀⤀ഀഀ
	਍ऀ 吀攀猀琀攀搀 漀渀 眀椀渀搀漀眀猀 眀椀琀栀        䤀䔀㘀Ⰰ 䤀䔀㜀Ⰰ 䘀䘀㈀Ⰰ 䘀䘀㌀Ⰰ 伀瀀攀爀愀 㤀⸀㘀㈀ഀഀ
	 Tested on Linux (ubuntu) with FF3਍ऀ ഀഀ
	 You may only use this script library on web help content ਍ऀ 最攀渀攀爀愀琀攀搀 甀猀椀渀最 吀爀椀猀漀昀琀 䌀䴀匀ഀഀ
   ========================================================================== */਍ഀഀ
function Search(s)਍笀ഀഀ
	var resultsFound = false;਍  琀爀礀ഀഀ
  {਍ऀऀ琀栀椀猀⸀猀琀愀琀甀猀 㴀 猀攀愀爀挀栀椀渀最氀愀戀攀氀㬀ഀഀ
//		alert("s = |" + s + "|");਍ऀ紀ഀഀ
	catch(err)਍  笀ഀഀ
	  var txt;਍ऀ  琀砀琀㴀∀吀栀攀爀攀 眀愀猀 愀渀 攀爀爀漀爀 漀渀 琀栀椀猀 瀀愀最攀⸀尀渀尀渀∀㬀ഀഀ
	  txt+="Error description: " + err.description + "\n\n";਍ऀ  琀砀琀⬀㴀∀䌀氀椀挀欀 伀䬀 琀漀 挀漀渀琀椀渀甀攀⸀尀渀尀渀∀㬀ഀഀ
	  alert(txt);਍  紀ഀഀ
਍ऀ椀昀 ⠀℀猀⤀ഀഀ
  	 return false;਍  ऀ ഀഀ
	searchCriteria = distectSearchCriteria(s);਍ऀ瘀愀爀 爀攀猀甀氀琀䄀爀爀䤀渀搀攀砀倀漀猀 㴀 渀攀眀 䄀爀爀愀礀⠀⤀㬀ഀഀ
	var ORoperator = false; // by default all criteria have AND's inbetween. OR operator (,) must be entered by user.਍ऀഀഀ
	for (var criteriaCounter = 0; criteriaCounter < searchCriteria.length; criteriaCounter++) {਍⼀⼀ऀऀ愀氀攀爀琀⠀∀匀攀愀爀挀栀 昀漀爀 搀椀猀攀挀琀攀搀 挀爀椀琀攀爀椀愀㨀 ∀ ⬀ 猀攀愀爀挀栀䌀爀椀琀攀爀椀愀嬀挀爀椀琀攀爀椀愀䌀漀甀渀琀攀爀崀⤀㬀ഀഀ
		var foundDocumentIndexPos = new Array();		਍ऀऀ椀昀 ⠀猀攀愀爀挀栀䌀爀椀琀攀爀椀愀嬀挀爀椀琀攀爀椀愀䌀漀甀渀琀攀爀崀 㴀㴀 ∀簀∀⤀ ഀഀ
		{	ORoperator = true; }਍ऀऀ攀氀猀攀ഀഀ
		{਍⼀⼀ऀऀऀ伀刀漀瀀攀爀愀琀漀爀 㴀 昀愀氀猀攀㬀ഀഀ
			for (var i = 0; i < SearchInfo.length; i++) {਍ऀऀऀऀ椀昀 ⠀匀攀愀爀挀栀䤀渀昀漀嬀椀崀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀⸀椀渀搀攀砀伀昀⠀猀攀愀爀挀栀䌀爀椀琀攀爀椀愀嬀挀爀椀琀攀爀椀愀䌀漀甀渀琀攀爀崀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀Ⰰ　⤀㸀ⴀ㄀⤀ഀഀ
	      {਍ऀऀऀऀऀ昀漀甀渀搀䐀漀挀甀洀攀渀琀䤀渀搀攀砀倀漀猀⸀瀀甀猀栀⠀椀⤀㬀ऀ      ऀഀഀ
	      }      ਍ऀऀऀ紀ഀഀ
		}਍ऀऀ椀昀 ⠀伀刀漀瀀攀爀愀琀漀爀⤀ഀഀ
		{਍ऀऀऀ⼀⼀ 挀漀洀戀椀渀攀 ⠀猀欀椀瀀 愀氀爀攀愀搀礀 愀瘀愀椀氀愀戀氀攀 爀攀昀攀爀攀渀挀攀猀⤀ 戀漀琀栀 ⠀昀漀渀搀䐀漀挀甀洀攀渀琀䤀渀搀攀砀倀漀猀 ⼀ 爀攀猀甀氀琀䄀爀爀䤀渀搀攀砀倀漀猀⤀ 愀爀爀愀礀猀ഀഀ
			਍ऀऀ紀ഀഀ
		else਍ऀऀ笀ഀഀ
			// build new union array containing elements existing in both (fondDocumentIndexPos / resultArrIndexPos) arrays਍ऀऀऀ爀攀猀甀氀琀䄀爀爀䤀渀搀攀砀倀漀猀 㴀 挀漀洀戀椀渀攀䄀爀爀愀礀猀⠀昀漀甀渀搀䐀漀挀甀洀攀渀琀䤀渀搀攀砀倀漀猀Ⰰ 爀攀猀甀氀琀䄀爀爀䤀渀搀攀砀倀漀猀Ⰰ 伀刀漀瀀攀爀愀琀漀爀Ⰰ 挀爀椀琀攀爀椀愀䌀漀甀渀琀攀爀⤀ഀഀ
		}਍ऀऀऀഀഀ
	}਍ऀഀഀ
	//Build result list in browser screen.਍ऀ猀栀漀眀匀攀愀爀挀栀刀攀猀甀氀琀猀⠀猀Ⰰ 爀攀猀甀氀琀䄀爀爀䤀渀搀攀砀倀漀猀Ⰰ 猀攀愀爀挀栀䌀爀椀琀攀爀椀愀⤀㬀ഀഀ
਍ऀ爀攀琀甀爀渀 琀爀甀攀㬀ഀഀ
}਍ഀഀ
function showSearchResults(searchString, resultArr, searchCriteria)਍笀ഀഀ
	var sSearchedText = '';਍ऀ瘀愀爀 瀀愀最攀匀琀爀椀渀最㴀✀㰀℀䐀伀䌀吀夀倀䔀 栀琀洀氀 倀唀䈀䰀䤀䌀 ∀ⴀ⼀⼀圀㌀䌀⼀⼀䐀吀䐀 堀䠀吀䴀䰀 ㄀⸀　 吀爀愀渀猀椀琀椀漀渀愀氀⼀⼀䔀一∀ ∀栀琀琀瀀㨀⼀⼀眀眀眀⸀眀㌀⸀漀爀最⼀吀刀⼀砀栀琀洀氀㄀⼀䐀吀䐀⼀砀栀琀洀氀㄀ⴀ琀爀愀渀猀椀琀椀漀渀愀氀⸀搀琀搀∀㸀尀渀✀㬀ഀഀ
	pageString+='<html>\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀㰀栀攀愀搀㸀尀渀✀㬀ഀഀ
	pageString+='	<title>' + searchtitlelabel + '</title>\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀ऀ㰀戀愀猀攀 琀愀爀最攀琀㴀∀开猀攀氀昀∀㸀尀渀✀㬀ഀഀ
	pageString+='	<meta name="Generator" content="Trisoft CMS 2009" />\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀ऀ㰀洀攀琀愀 栀琀琀瀀ⴀ攀焀甀椀瘀㴀∀䌀漀渀琀攀渀琀ⴀ吀礀瀀攀∀ 挀漀渀琀攀渀琀㴀∀琀攀砀琀⼀栀琀洀氀㬀 挀栀愀爀猀攀琀㴀䤀匀伀ⴀ㠀㠀㔀㤀ⴀ㄀∀ ⼀㸀尀渀✀㬀ഀഀ
	pageString+='	<link rel="stylesheet" type="text/css" href="webhelplayout.css" />\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀ऀ㰀氀椀渀欀 爀攀氀㴀∀猀琀礀氀攀猀栀攀攀琀∀ 琀礀瀀攀㴀∀琀攀砀琀⼀挀猀猀∀ 栀爀攀昀㴀∀猀琀礀氀攀猀栀攀攀琀⸀挀猀猀∀ ⼀㸀尀渀✀㬀ഀഀ
	pageString+='	<script type="text/javascript" src="searchlabels.js" charset="UTF-8"></script>\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀ऀ㰀猀挀爀椀瀀琀 琀礀瀀攀㴀∀琀攀砀琀⼀樀愀瘀愀猀挀爀椀瀀琀∀ 猀爀挀㴀∀猀攀愀爀挀栀⸀樀猀∀ 挀栀愀爀猀攀琀㴀∀唀吀䘀ⴀ㄀㘀∀㸀㰀⼀猀挀爀椀瀀琀㸀尀渀✀㬀ഀഀ
	pageString+='	<script type="text/javascript" src="searchdata.js" charset="UTF-8"></script>\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀㰀⼀栀攀愀搀㸀尀渀✀㬀ഀഀ
	pageString+='<body class="framelayout">\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀ऀ㰀栀㄀ 挀氀愀猀猀㴀∀栀攀愀搀椀渀最㄀∀㸀✀ ⬀ 猀攀愀爀挀栀琀椀琀氀攀氀愀戀攀氀 ⬀ ✀㰀⼀栀㄀㸀尀渀✀㬀ഀഀ
	pageString+='	<form action="#" onsubmit="Search(document.forms[\'SearchFrm\'].searchcriteria.value); return false;" name="SearchFrm" id="SearchFrm">\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀ऀऀ㰀猀瀀愀渀㸀✀ ⬀ 攀渀琀攀爀猀攀愀爀挀栀挀爀椀琀攀爀椀愀氀愀戀攀氀 ⬀ ✀㰀⼀猀瀀愀渀㸀㰀戀爀 ⼀㸀尀渀✀㬀ഀഀ
	pageString+='		<input type="text" width="145" name="searchcriteria" value=\'' + searchString.replace(/\'/g, "&#39;") + '\' />\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀ऀऀ㰀椀渀瀀甀琀 琀礀瀀攀㴀∀猀甀戀洀椀琀∀ 渀愀洀攀㴀∀猀攀愀爀挀栀戀甀琀琀漀渀∀ 瘀愀氀甀攀㴀∀✀ ⬀ 猀攀愀爀挀栀戀甀琀琀漀渀氀愀戀攀氀 ⬀ ✀∀ 眀椀搀琀栀㴀∀㔀　∀㸀尀渀✀㬀ഀഀ
	pageString+='	</form>\n';਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀㰀搀椀瘀 椀搀㴀∀爀攀猀甀氀琀氀椀猀琀∀㸀尀渀✀㬀ഀഀ
	਍ऀ椀昀 ⠀爀攀猀甀氀琀䄀爀爀⸀氀攀渀最琀栀 㴀㴀 　⤀ ഀഀ
	{਍ऀऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀㰀瀀㸀✀ ⬀ 渀漀搀漀挀甀洀攀渀琀猀昀漀甀渀搀氀愀戀攀氀 ⬀ ✀㰀⼀瀀㸀尀渀✀㬀ഀഀ
	}਍ऀ攀氀猀攀ഀഀ
	{਍ऀऀ瀀愀最攀匀琀爀椀渀最 ⬀㴀 ✀㰀瀀㸀✀ ⬀ 昀漀氀氀漀眀椀渀最搀漀挀甀洀攀渀琀猀昀漀甀渀搀氀愀戀攀氀 ⬀ ✀㰀⼀瀀㸀尀渀✀㬀ഀഀ
		for (var resultCounter=0; resultCounter<resultArr.length;resultCounter++)਍ऀऀ笀ഀഀ
			sSearchedText = SearchInfo[resultArr[resultCounter]];਍ऀऀऀ瘀愀爀 昀椀爀猀琀洀愀琀挀栀椀渀最瀀漀猀 㴀 猀匀攀愀爀挀栀攀搀吀攀砀琀⸀氀攀渀最琀栀㬀ഀഀ
			pageString += '<p class="resultitem"><a href="' + SearchFiles[resultArr[resultCounter]] + '" target="contentwin">' + SearchTitles[resultArr[resultCounter]] + '</a><br/>\n';਍ऀऀऀ瀀愀最攀匀琀爀椀渀最 ⬀㴀 ✀㰀猀瀀愀渀㸀✀㬀ഀഀ
			for (var criteriaCounter = 0; criteriaCounter < searchCriteria.length; criteriaCounter++)਍ऀऀऀ笀ഀഀ
				var indexpos = sSearchedText.toLowerCase().indexOf(searchCriteria[criteriaCounter].toLowerCase(),0);਍ऀऀऀऀ椀昀 ⠀椀渀搀攀砀瀀漀猀 㸀ⴀ㄀⤀ഀഀ
				{਍ऀऀऀऀऀ椀昀 ⠀椀渀搀攀砀瀀漀猀 㰀 昀椀爀猀琀洀愀琀挀栀椀渀最瀀漀猀⤀ 笀昀椀爀猀琀洀愀琀挀栀椀渀最瀀漀猀 㴀 椀渀搀攀砀瀀漀猀紀㬀ഀഀ
					sSearchedText = highlightText(sSearchedText, searchCriteria[criteriaCounter], indexpos);਍ऀऀऀऀ紀ഀഀ
			}			਍ऀऀऀ瘀愀爀 猀䔀渀搀匀琀爀椀渀最 㴀 ✀⸀⸀⸀✀㬀ऀऀऀऀऀഀഀ
			if (firstmatchingpos > 50)਍ऀऀऀ笀ഀഀ
				if(sSearchedText.substr(firstmatchingpos-50,125).toLowerCase().lastIndexOf("<b>") > sSearchedText.substr(firstmatchingpos-50,125).toLowerCase().lastIndexOf("</b>")) {sEndString='</b>...';} ਍⼀⼀ऀऀऀऀ愀氀攀爀琀⠀✀戀 瀀漀猀㨀 ✀ ⬀ 猀匀攀愀爀挀栀攀搀吀攀砀琀⸀猀甀戀猀琀爀⠀昀椀爀猀琀洀愀琀挀栀椀渀最瀀漀猀ⴀ㔀　Ⰰ㄀㈀㔀⤀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀⸀氀愀猀琀䤀渀搀攀砀伀昀⠀∀㰀戀㸀∀⤀ ⬀ ✀ 簀 ⼀戀 瀀漀猀 ✀ ⬀ 猀匀攀愀爀挀栀攀搀吀攀砀琀⸀猀甀戀猀琀爀⠀昀椀爀猀琀洀愀琀挀栀椀渀最瀀漀猀ⴀ㔀　Ⰰ㄀㈀㔀⤀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀⸀氀愀猀琀䤀渀搀攀砀伀昀⠀∀㰀⼀戀㸀∀⤀ ⬀ ✀ 簀 䔀渀搀猀琀爀椀渀最㨀 ✀ ⬀ 猀䔀渀搀匀琀爀椀渀最⤀㬀 ഀഀ
			pageString +="..."+ sSearchedText.substr(firstmatchingpos-50,125)+sEndString+"\n";਍ऀऀऀ紀ഀഀ
			else਍ऀऀऀ笀ഀഀ
				if(sSearchedText.substr(0,125).toLowerCase().lastIndexOf("<b>") > sSearchedText.substr(0,125).toLowerCase().lastIndexOf("</b>")) {sEndString='</b>...';}਍⼀⼀ऀऀऀऀ愀氀攀爀琀⠀✀戀 瀀漀猀㨀 ✀ ⬀ 猀匀攀愀爀挀栀攀搀吀攀砀琀⸀猀甀戀猀琀爀⠀　Ⰰ㄀㈀㔀⤀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀⸀氀愀猀琀䤀渀搀攀砀伀昀⠀∀㰀戀㸀∀⤀ ⬀ ✀ 簀 ⼀戀 瀀漀猀 ✀ ⬀ 猀匀攀愀爀挀栀攀搀吀攀砀琀⸀猀甀戀猀琀爀⠀　Ⰰ㄀㈀㔀⤀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀⸀氀愀猀琀䤀渀搀攀砀伀昀⠀∀㰀⼀戀㸀∀⤀ ⬀ ✀ 簀 䔀渀搀猀琀爀椀渀最㨀 ✀ ⬀ 猀䔀渀搀匀琀爀椀渀最⤀㬀 ऀऀऀऀഀഀ
				pageString += sSearchedText.substr(0,125)+sEndString+"\n";਍ऀऀऀ紀ഀഀ
			਍ऀऀऀ瀀愀最攀匀琀爀椀渀最 ⬀㴀 ✀㰀⼀猀瀀愀渀㸀㰀⼀瀀㸀尀渀✀㬀ऀഀഀ
		}਍ऀऀഀഀ
		਍ऀ紀 ⼀⨀ 攀氀猀攀 ⨀⼀ഀഀ
਍ऀ瀀愀最攀匀琀爀椀渀最⬀㴀✀㰀⼀搀椀瘀㸀尀渀✀㬀ऀഀഀ
	pageString+="</body></html>";਍ऀഀഀ
	this.status="";਍ऀ琀栀椀猀⸀搀漀挀甀洀攀渀琀⸀漀瀀攀渀⠀⤀㬀ഀഀ
	this.document.write(pageString);਍ऀ琀栀椀猀⸀搀漀挀甀洀攀渀琀⸀挀氀漀猀攀⠀⤀㬀ഀഀ
}਍ഀഀ
function highlightText(text, textToHighlight, pos)਍笀ഀഀ
	var hiText = text.substr(0,pos);਍ऀ栀椀吀攀砀琀 ⬀㴀 琀攀砀琀⸀猀甀戀猀琀爀⠀瀀漀猀Ⰰ琀攀砀琀吀漀䠀椀最栀氀椀最栀琀⸀氀攀渀最琀栀⤀⸀戀漀氀搀⠀⤀㬀ഀഀ
	਍ऀ瘀愀爀 椀瀀漀猀 㴀 琀攀砀琀⸀猀甀戀猀琀爀⠀瀀漀猀 ⬀ 琀攀砀琀吀漀䠀椀最栀氀椀最栀琀⸀氀攀渀最琀栀⤀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀⸀椀渀搀攀砀伀昀⠀琀攀砀琀吀漀䠀椀最栀氀椀最栀琀⸀琀漀䰀漀眀攀爀䌀愀猀攀⠀⤀Ⰰ　⤀㬀ഀഀ
	਍ऀ椀昀 ⠀椀瀀漀猀 㸀ⴀ ㄀⤀ഀഀ
	{਍ऀऀ栀椀吀攀砀琀 ⬀㴀 栀椀最栀氀椀最栀琀吀攀砀琀⠀琀攀砀琀⸀猀甀戀猀琀爀⠀瀀漀猀 ⬀ 琀攀砀琀吀漀䠀椀最栀氀椀最栀琀⸀氀攀渀最琀栀⤀Ⰰ 琀攀砀琀吀漀䠀椀最栀氀椀最栀琀Ⰰ 椀瀀漀猀⤀㬀ഀഀ
	}਍ऀ攀氀猀攀ഀഀ
	{਍ऀऀ栀椀吀攀砀琀 ⬀㴀 琀攀砀琀⸀猀甀戀猀琀爀⠀瀀漀猀 ⬀ 琀攀砀琀吀漀䠀椀最栀氀椀最栀琀⸀氀攀渀最琀栀⤀㬀ഀഀ
	}਍ऀഀഀ
	return hiText;਍紀ഀഀ
਍昀甀渀挀琀椀漀渀 搀椀猀琀攀挀琀匀攀愀爀挀栀䌀爀椀琀攀爀椀愀⠀猀⤀ഀഀ
{਍ऀ瘀愀爀 匀攀愀爀挀栀䤀琀攀洀猀 㴀 渀攀眀 䄀爀爀愀礀⠀⤀㬀ഀഀ
਍ऀ瘀愀爀 匀瀀愀挀攀倀漀猀 㴀 ⴀ㄀㬀ഀഀ
	var prevSpacePos = 0;਍ऀ瘀愀爀 儀甀漀琀攀䔀渀搀倀漀猀 㴀 ⴀ㄀㬀ഀഀ
	var criteria = "";਍ऀ瘀愀爀 焀甀漀琀攀搀猀琀爀椀渀最 㴀 昀愀氀猀攀㬀ഀഀ
਍ऀ昀漀爀 ⠀挀栀愀爀瀀漀猀 㴀 　㬀 挀栀愀爀瀀漀猀 㰀 猀⸀氀攀渀最琀栀㬀 挀栀愀爀瀀漀猀⬀⬀⤀ഀഀ
	{਍ऀऀ瘀愀爀 氀攀琀琀攀爀 㴀 猀嬀挀栀愀爀瀀漀猀崀㬀ഀഀ
		if (letter == undefined) {letter = s.charAt(charpos);}਍ऀऀഀഀ
		if (quotedstring) {਍ऀऀऀ猀眀椀琀挀栀 ⠀氀攀琀琀攀爀⤀ 笀ഀഀ
				case "\"":਍ऀऀऀऀऀ儀甀漀琀攀䔀渀搀倀漀猀 㴀 挀栀愀爀瀀漀猀㬀ഀഀ
					if (QuoteEndPos>-1) ਍ऀऀऀऀऀ笀ഀഀ
							criteria = " " + s.substring(QuoteStartPos,QuoteEndPos) + " ";਍ऀऀऀऀऀ紀ഀഀ
					SearchItems.push(criteria);਍ऀऀऀऀऀ焀甀漀琀攀搀猀琀爀椀渀最 㴀 昀愀氀猀攀㬀ഀഀ
					QuoteStartPos = 0;਍ऀऀऀऀऀ瀀爀攀瘀匀瀀愀挀攀倀漀猀 㴀 儀甀漀琀攀䔀渀搀倀漀猀⬀㈀㬀ഀഀ
					break;			਍ऀऀऀऀ搀攀昀愀甀氀琀㨀ഀഀ
					break;਍ऀऀऀ紀ഀഀ
		}਍ऀऀ攀氀猀攀 笀ഀഀ
			switch (letter) {਍ऀऀऀऀ挀愀猀攀 ∀ ∀㨀ഀഀ
					SpacePos = charpos;਍ऀऀऀऀऀ椀昀 ⠀匀瀀愀挀攀倀漀猀 㸀 瀀爀攀瘀匀瀀愀挀攀倀漀猀⤀ 笀ഀഀ
						criteria = s.substring(prevSpacePos,SpacePos);਍ऀऀऀऀऀऀ匀攀愀爀挀栀䤀琀攀洀猀⸀瀀甀猀栀⠀挀爀椀琀攀爀椀愀⤀㬀 ⼀⼀匀攀愀爀挀栀䤀琀攀洀猀⸀瀀甀猀栀⠀∀ ∀ ⬀ 挀爀椀琀攀爀椀愀⤀㬀 椀渀 挀愀猀攀 眀漀爀搀猀 栀愀瘀攀 琀漀 猀琀愀爀琀 眀椀琀栀 挀爀椀琀攀爀椀愀ഀഀ
						prevSpacePos = SpacePos+1;਍ऀऀऀऀऀ紀ഀഀ
					break;				਍ऀऀऀऀ挀愀猀攀 ∀尀∀∀㨀ഀഀ
					QuoteStartPos = charpos+1; ਍ऀऀऀऀऀ儀甀漀琀攀䔀渀搀倀漀猀 㴀 ⴀ㄀㬀 ഀഀ
					quotedstring = true;਍ऀऀऀऀऀ戀爀攀愀欀㬀ऀऀऀഀഀ
				default:਍ऀऀऀऀऀ戀爀攀愀欀㬀ഀഀ
			}਍ऀऀ紀ഀഀ
	}਍ऀ椀昀 ⠀焀甀漀琀攀搀猀琀爀椀渀最⤀ 笀愀氀攀爀琀⠀∀圀栀攀渀 猀攀愀爀挀栀椀渀最 昀漀爀 攀砀愀挀琀 洀愀琀挀栀攀猀Ⰰ 礀漀甀 渀攀攀搀 琀漀 猀甀瀀瀀氀礀 愀渀 攀焀甀愀氀 愀洀漀甀渀琀 漀昀 猀琀愀爀琀 愀渀搀 攀渀搀 焀甀漀琀攀猀∀⤀㬀 爀攀琀甀爀渀 嬀崀㬀紀ഀഀ
	if (prevSpacePos > -1 && prevSpacePos < charpos) {਍ऀऀ挀爀椀琀攀爀椀愀 㴀 猀⸀猀甀戀猀琀爀椀渀最⠀瀀爀攀瘀匀瀀愀挀攀倀漀猀Ⰰ挀栀愀爀瀀漀猀⤀㬀ഀഀ
		SearchItems.push(criteria); //SearchItems.push(" " + criteria); in case words have to start with criteria਍ऀ紀ഀഀ
਍⼀⼀ऀ愀氀攀爀琀⠀∀渀甀洀戀攀爀 漀昀 挀爀椀琀攀爀椀愀㨀 ∀ ⬀ 匀攀愀爀挀栀䤀琀攀洀猀⸀氀攀渀最琀栀⤀㬀ഀഀ
		਍ऀ⼀⼀ 吀伀䐀伀㨀 刀攀瀀氀愀挀攀⼀䔀猀挀愀瀀攀 㰀 㸀 ☀ 戀礀 攀渀琀椀琀礀 瘀愀氀甀攀猀⸀ഀഀ
//	for (var i = 0; i < SearchItems.length; i++) {਍⼀⼀ऀऀ匀攀愀爀挀栀䤀琀攀洀猀嬀椀崀⸀爀攀瀀氀愀挀攀⠀∀㰀∀Ⰰ∀☀氀琀㬀∀⤀㬀ഀഀ
//		SearchItems[i].replace(">","&gt;");਍⼀⼀ऀऀ匀攀愀爀挀栀䤀琀攀洀猀嬀椀崀⸀爀攀瀀氀愀挀攀⠀∀☀∀Ⰰ∀☀愀洀瀀㬀∀⤀㬀ഀഀ
//	}	਍ഀഀ
	return SearchItems;਍紀ഀഀ
਍昀甀渀挀琀椀漀渀 挀漀洀戀椀渀攀䄀爀爀愀礀猀⠀渀攀眀䄀爀爀愀礀Ⰰ 攀砀椀猀琀椀渀最䄀爀爀愀礀Ⰰ 挀漀洀戀椀渀攀氀椀猀琀猀Ⰰ 爀攀焀甀攀猀琀一甀洀戀攀爀⤀ഀഀ
{਍ऀ瘀愀爀 挀漀洀戀椀渀攀搀䄀爀爀愀礀 㴀 渀攀眀 䄀爀爀愀礀⠀⤀㬀ഀഀ
਍ऀ⼀⼀ 䘀椀爀猀琀 爀攀焀甀攀猀琀⸀ 匀漀 爀攀琀甀爀渀 渀攀眀䄀爀爀愀礀 戀攀挀愀甀猀攀 琀栀椀猀 椀猀 愀氀眀愀礀猀 挀漀爀爀攀挀琀⸀ഀഀ
	if (requestNumber == 0)਍ऀ笀ഀഀ
		return newArray;਍ऀ紀ഀഀ
	਍ऀ⼀⼀ 一漀琀 昀椀爀猀琀 愀爀爀愀礀⸀ 䌀栀攀挀欀 椀昀 昀漀甀渀搀 搀漀挀甀洀攀渀琀 眀愀猀 愀氀猀漀 昀漀甀渀搀 眀椀琀栀 瀀爀攀瘀椀漀甀猀 猀攀愀爀挀栀䌀爀椀琀攀爀椀愀⸀ഀഀ
	if (requestNumber>0)਍ऀ笀ഀഀ
		for (i=0; i<newArray.length; i++)਍ऀऀ笀ഀഀ
			var exists = false਍ऀऀऀ昀漀爀 ⠀樀㴀　㬀 樀㰀攀砀椀猀琀椀渀最䄀爀爀愀礀⸀氀攀渀最琀栀㬀 樀⬀⬀⤀ഀഀ
			{਍ऀऀऀऀ椀昀 ⠀渀攀眀䄀爀爀愀礀嬀椀崀 㴀㴀 攀砀椀猀琀椀渀最䄀爀爀愀礀嬀樀崀⤀ഀഀ
				{਍ऀऀऀऀऀ攀砀椀猀琀猀 㴀 琀爀甀攀㬀ഀഀ
					break;਍ऀऀऀऀ紀ഀഀ
			}਍ऀऀऀഀഀ
				// AND operator between searchCriteria਍ऀऀऀऀ⼀⼀ 椀昀 搀漀挀甀洀攀渀琀 愀氀爀攀愀搀礀 攀砀椀猀琀猀 椀渀 攀砀椀猀琀椀渀最䄀爀爀愀礀Ⰰ 挀漀瀀礀 爀攀昀攀爀攀渀挀攀 琀漀 渀攀眀 椀琀攀洀⸀ഀഀ
				if (exists) {combinedArray.push(newArray[i]);}਍ऀऀ紀ഀഀ
	}਍ऀ爀攀琀甀爀渀 挀漀洀戀椀渀攀搀䄀爀爀愀礀㬀ഀഀ
}਍ഀഀ
/* =============================== End Of File =============================== */   