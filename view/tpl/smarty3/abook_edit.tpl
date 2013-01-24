
<h2>{{$header}}</h2>

<h3>{{$addr}}</h3>

{{if $notself}}
<div id="connection-flag-tabs">
{{$tabs}}
</div>
{{/if}}

{{if $self}}
<div id="autoperm-desc" class="descriptive-paragraph">{{$autolbl}}</div>
{{/if}}

<div id="contact-edit-wrapper">

{{if $notself}}
{{if $slide}}
<h3>{{$lbl_slider}}</h3>

{{$slide}}

{{/if}}
{{/if}}

<h3>{{$permlbl}}</h3>

<form action="connections/{{$contact_id}}" method="post" >
<input type="hidden" name="contact_id" value="{{$contact_id}}">
<input id="contact-closeness-mirror" type="hidden" name="closeness" value="{{$close}}" />

<br />
<b>{{$quick}}</b>
<ul>
{{if $self}}
<li><a href="#" onclick="connectForum(); return false;">{{$forum}}</a></li>
{{/if}}
<li><a href="#" onclick="connectFullShare(); return false;">{{$full}}</a></li>
<li><a href="#" onclick="connectCautiousShare(); return false;">{{$cautious}}</a></li>
<li><a href="#" onclick="connectFollowOnly(); return false;">{{$follow}}</a></li>
<br />

<div id="abook-advanced" class="fakelink" onclick="openClose('abook-advanced-panel');">{{$advanced}}</div>

<div id="abook-advanced-panel" style="display: none;">

<span class="abook-them">{{$them}}</span><span class="abook-me">{{$me}}</span>
<br />
<br />
{{foreach $perms as $prm}}
{{include file="field_acheckbox.tpl" field=$prm}}
{{/foreach}}
<br />

</div>

<input class="contact-edit-submit" type="submit" name="submit" value="{{$submit}}" />

</form>
</div>
