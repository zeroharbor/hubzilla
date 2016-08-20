<div class="generic-content-wrapper">
		<form action="" method="post" autocomplete="on" >
		<input type="hidden" name="action" value="{{$action}}">
		<div class="section-title-wrapper">
			<div class="pull-right">				
					<button class="btn btn-md btn-success" type="submit" name="submit" value="{{$exportbtn}}">{{$exportbtn}}</button>
			</div>
			<h2>{{$title}}</h2>
			<div class="clear"></div>
		</div>
		<div id="import-website-content-wrapper" class="section-content-wrapper">
				<div class="pull-left">
						<button id="toggle-select-all" class="btn btn-xs btn-primary" onclick="checkedAll(window.isChecked); return false;"><i class="fa fa-check"></i>&nbsp;Toggle Select All</button>
				</div>

				<div class="clear"></div>
				<h4>Pages</h4>
				<div>
				<table class="table-striped table-responsive table-hover" style="width: 100%;">
						<thead>
								<tr><th>Export?</th><th>Page Title</th><th>Page Link</th><th>Type</th></tr>
						</thead>
						{{foreach $pages as $page}}
								<tr>
									<td>
										<div class='squaredThree'>
										<input type="checkbox" id="page_{{$page.mid}}" name="page[]" value="{{$page.mid}}">
										<label for="page_{{$page.mid}}"></label>
										</div>
									</td>
									<td>
										<div class="desc">
											{{$page.title}}<br>
										</div>
									</td>
									<td>
										<div class='desc'>
											{{$page.pagetitle}}<br>
										</div>
									</td>
									<td>
										<div class='desc'>
											{{$page.mimetype}}<br>
										</div>
									</td>
								</tr>
						{{/foreach}}
				</table>
				</div>
		</div>
		</form>
</div>

