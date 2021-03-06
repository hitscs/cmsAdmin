
<form id="createArticle" class="form-horizontal" method="post"
	action="${sri.makeUrlByType("createArticle", "transition", null, "false").getUrl()}">

	<input type="hidden" class="form-control" id="content" name="content">
	<input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
	<div class="form-group">
		<label for="title" class="col-sm-2 control-label">文章标题</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="title" name="title" required="required">
		</div>
	</div>
	<!-- <hr> -->
	<div>
		<!-- Custom Tabs -->
		<div class="nav-tabs-custom">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#tab_1" data-toggle="tab">文章</a></li>
				<li><a href="#tab_2" data-toggle="tab">发布选项</a></li>
				<li><a href="#tab_3" data-toggle="tab">文章选项</a></li>
				<li class="pull-right"><button id="submitAndReturnButton" type="button"
						class="btn btn-block btn-primary btn-sm">保存并返回</button></li>												
				<li class="pull-right"><button id="submitAndNewButton" type="button"
						class="btn btn-block btn-primary btn-sm">保存并新建</button></li>
				<li class="pull-right"><button id="submitButton" type="button"
						class="btn btn-block btn-primary btn-sm">保存</button></li>
			</ul>
			<div class="tab-content" style="height: 600px;">
				<div class="tab-pane active" id="tab_1">
					<div class="col-md-8">
						<script id="editor" type="text/plain"
							style="width: 100%; height: 450px;"></script>
					</div>
					<div class="col-md-4">
						<div class="box-body">
							<div class="form-group">
								<label for="statusId" class="col-sm-4 control-label">状态:</label>

								<div class="col-sm-8">
									<input type="text" class="form-control" id="statusId" name="statusId">
								</div>
							</div>
							<div class="form-group">
								<label for="categoryId" class="col-sm-4 control-label">栏目:</label>

								<div class="col-sm-8">
									<input type="text" class="form-control" id="categoryId" name="categoryId">
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- /.tab-pane -->
				<div class="tab-pane" id="tab_2">The European languages are
					members of the same family. Their separate existence is a myth. For
					science, music, sport, etc, Europe uses the same vocabulary. The
					languages only differ in their grammar, their pronunciation and
					their most common words. Everyone realizes why a new common
					language would be desirable: one could refuse to pay expensive
					translators. To achieve this, it would be necessary to have uniform
					grammar, pronunciation and more common words. If several languages
					coalesce, the grammar of the resulting language is more simple and
					regular than that of the individual languages.</div>
				<!-- /.tab-pane -->
				<div class="tab-pane" id="tab_3">Lorem Ipsum is simply dummy
					text of the printing and typesetting industry. Lorem Ipsum has been
					the industry's standard dummy text ever since the 1500s, when an
					unknown printer took a galley of type and scrambled it to make a
					type specimen book. It has survived not only five centuries, but
					also the leap into electronic typesetting, remaining essentially
					unchanged. It was popularised in the 1960s with the release of
					Letraset sheets containing Lorem Ipsum passages, and more recently
					with desktop publishing software like Aldus PageMaker including
					versions of Lorem Ipsum.</div>
				<!-- /.tab-pane -->
			</div>
			<!-- /.tab-content -->
		</div>
		<!-- nav-tabs-custom -->
	</div>
	<!-- /.col -->
</form>
<#assign afterScreenScript>
 var ue = UE.getEditor('editor');
 var content=$("#content").val();
//UE.getEditor('editor').setContent(content);

$("#submitAndReturnButton").click(function(){ 
var content=UE.getEditor('editor').getContent();
$("#content").val(content); $("#createArticle").submit(); }); </#assign>
<#t>${sri.appendToScriptWriter(afterScreenScript)}
