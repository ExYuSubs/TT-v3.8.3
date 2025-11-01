<?php

#================================#
#       TorrentTrader 3.8.3      #
#  http://torrenttrader.uk       #
#--------------------------------#
#       Created by M-Jay         #
#       Modified by MicroMonkey, #
#       Coco, Botanicar          #
#================================#

function textbbcode($form,$name,$content="") {
	//$form = form name
	//$name = textarea name
	//$content = textarea content (only for edit pages etc)
?>
<script type="text/javascript">

function BBTag(tag,s,text,form){
switch(tag)
    {
    case '[quote]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[quote]" + body.substring(start, end) + "[/quote]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[quote][/quote]";
	}
        break;

    case '[code]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[code]" + body.substring(start, end) + "[/code]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[code][/code]";
	}
        break;


    case '[img]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[img]" + body.substring(start, end) + "[/img]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[img][/img]";
	}
        break;
    case '[url]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[url]" + body.substring(start, end) + "[/url]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[url][/url]";
	}
        break;


    case '[youtube]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[youtube]" + body.substring(start, end) + "[/youtube]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "Ubaci YouTube link";
	}
        break;





    case '[*]':
        document.forms[form].elements[text].value = document.forms[form].elements[text].value+"[*]";
        break;
    case '[b]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[b]" + body.substring(start, end) + "[/b]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[b][/b]";
	}
        break;
    case '[i]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[i]" + body.substring(start, end) + "[/i]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[i][/i]";
	}
        break;
    case '[u]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[u]" + body.substring(start, end) + "[/u]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[u][/u]";
	}
        break;


    case '[s]':
	var start = document.forms[form].elements[text].selectionStart;
	var end = document.forms[form].elements[text].selectionEnd;
	if (start != end) {
		var body = document.forms[form].elements[text].value;
		var left = body.substr(body, start);
		var middle = "[s]" + body.substring(start, end) + "[/s]";
		var right = body.substr(end, body.length);
		document.forms[form].elements[text].value = left + middle + right;
	} else {
		document.forms[form].elements[text].value = document.forms[form].elements[text].value + "[s][/s]";
	}
        break;



    }
    document.forms[form].elements[text].focus();
}

</script>
<br />
<div class="torrent-category-detail clearfix">
<div align="center">
<table border='0' width='40%' cellspacing='0' cellpadding='0'>
	<tr>
          <td align="center"><input style="font-weight: bold;" class="btn btn-dark" type="button" name="bold" value="B " onclick="javascript: BBTag('[b]','bold','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input style="font-style: italic;" class="btn btn-dark" type="button" name="italic" value="I " onclick="javascript: BBTag('[i]','italic','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input style="text-decoration: underline;" class="btn btn-dark" type="button" name="underline" value="U " onclick="javascript: BBTag('[u]','underline','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input style="text-decoration: strike;" class="btn btn-dark" type="button" name="strike" value="S " onclick="javascript: BBTag('[s]','strike','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input type="button" name="li" class="btn btn-dark" value="List " onclick="javascript: BBTag('[*]','li','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input type="button" name="quote" class="btn btn-dark" value="QUOTE " onclick="javascript: BBTag('[quote]','quote','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input type="button" name="code" class="btn btn-dark" value="CODE" onclick="javascript: BBTag('[code]','code','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input type="button" name="url" class="btn btn-dark" value="URL " onclick="javascript: BBTag('[url]','url','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input type="button" name="img" class="btn btn-dark" value="IMG " onclick="javascript: BBTag('[img]','img','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
          <td align="center"><input type="button" name="youtube" class="btn btn-dark" value="YouTube" onclick="javascript: BBTag('[youtube]','youtube','<?php echo $name; ?>','<?php echo $form; ?>')" /></td>
</tr></table>


<hr>        
<table border="0" width="100%" cellspacing="5" cellpadding="5">
	<tr>
<td width="30%">
<ul class="list">
          <li><a href="javascript:SmileIT(':)','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/smile.png" border="0" alt=':)' title=':)' /></a>&nbsp;<a href="javascript:SmileIT(':(','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/sad.png" border="0" alt=':(' title=':(' /></a>&nbsp;<a href="javascript:SmileIT(':D','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/grin.png" border="0" alt=':D' title=':D' /></a>&nbsp;<a href="javascript:SmileIT(':P','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/razz.png" border="0" alt=':P' title=':P' /></a></li>

          <li><a href="javascript:SmileIT(':-)','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/smile-big.png" border="0" alt=':-)' title=':-)' /></a>&nbsp;<a href="javascript:SmileIT('B)','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/cool.png" border="0" alt='B)' title='B)' /></a>&nbsp;<a href="javascript:SmileIT('8o','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/eek.png" border="0" alt='8o' title='8o' /></a>&nbsp;<a href="javascript:SmileIT(':?','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/confused.png" border="0" alt=':?' title=':?' /></a></li>

          <li><a href="javascript:SmileIT('8)','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/glasses.png" border="0" alt='8)' title='8)' /></a>&nbsp;<a href="javascript:SmileIT(';)','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/wink.png" border="0" alt=';)' title=';)' /></a>&nbsp;<a href="javascript:SmileIT(':-*','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/kiss.png" border="0" alt=':-*' title=':-*' /></a>&nbsp;<a href="javascript:SmileIT(':-(','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/crying.png" border="0" alt=':-(' title=':-(' /></a></li>

          <li><a href="javascript:SmileIT(':|','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/plain.png" border="0" alt=':|' title=':|' /></a>&nbsp;<a href="javascript:SmileIT('O:-D','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/angel.png" border="0" alt='O:-D' title='0:-D' /></a>&nbsp;<a href="javascript:SmileIT(':-@','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/devilish.png" border="0" alt=':-@' title=':-@' /></a>&nbsp;<a href="javascript:SmileIT(':o)','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/monkey.png" border="0" alt=':o)' title=':o)' /></a></li>

           <li><a href="javascript:SmileIT('brb','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/brb.png" border="0" alt='brb' title='brb' /></a>&nbsp;<a href="javascript:SmileIT(':warn','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/warn.png" border="0" alt=':warn' title=':warn' /></a>&nbsp;<a href="javascript:SmileIT(':help','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/help.png" border="0" alt=':help' title=':help' /></a>&nbsp;<a href="javascript:SmileIT(':bad','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/bad.png" border="0" alt=':bad' title=':bad' /></a></li>

          <li><a href="javascript:SmileIT(':love','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/love.png" border="0" alt=':love' title=':love' /></a>&nbsp;<a href="javascript:SmileIT(':idea','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/idea.png" border="0" alt=':idea' title=':idea' /></a>&nbsp;<a href="javascript:SmileIT(':bomb','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/bomb.png" border="0" alt=':bomb' title=':bomb' /></a>&nbsp;<a href="javascript:SmileIT(':!','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/important.png" border="0" alt=':!' title=':!' /></a></li> 

          <li><a href="javascript:SmileIT(':good','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/good.png" border="0" alt=':good' title=':good' /></a>&nbsp;<a href="javascript:SmileIT(':los','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/los.png" border="0" alt=':los' title=':los' /></a>&nbsp;<a href="javascript:SmileIT(':computer','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/computer.png" border="0" alt=':computer' title=':computer' /></a>&nbsp;<a href="javascript:SmileIT(':beer','<?php echo $form; ?>','<?php echo $name; ?>')"><img src="images/smilies/beer.png" border="0" alt=':beer' title=':beer' /></a></li>           
          <li><a href="javascript:PopMoreSmiles('<?php echo $form; ?>','<?php echo $name; ?>');" class="btn btn-dark"><?php echo "<big'>".T_("MORE_SMILIES")."</big>";?></a></li>
          <li><a href="javascript:PopMoreTags();" class="btn btn-dark"><?php echo "<big'>".T_("MORE_TAGS")."</big>";?></a></li>      
</ul>

</td>

<td width="70%">
<textarea name="<?php echo $name; ?>" rows="10" cols="120"><?php echo $content; ?></textarea>
</td>
</tr></table>
        </div>
</div>
<?php
}
?>
