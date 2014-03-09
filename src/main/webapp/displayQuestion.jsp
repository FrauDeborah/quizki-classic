<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:fn="http://java.sun.com/jsp/jstl/functions" xmlns:qfn="http://quizki.com/tld/qfn" version="2.0">
    <jsp:directive.page language="java"
        contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
    <jsp:text>
        <![CDATA[ <?xml version="1.0" encoding="UTF-8" ?> ]]>
    </jsp:text>
    <jsp:text>
        <![CDATA[ <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> ]]>
    </jsp:text>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<title>Display Question - Quizki</title>

		<link href="../pkgs/Flat-UI-master/bootstrap/css/bootstrap.css" rel="stylesheet"/>
		<link href="../pkgs/Flat-UI-master/css/flat-ui.css" rel="stylesheet"/>
		<link href="../pkgs/font-awesome/css/font-awesome.css" rel="stylesheet"/>
		<link href="../pkgs/jquery-ui/jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css"/>

		<link href="../css/quizki-sitewide.css" rel="stylesheet" type="text/css"/> 
		<link href="../css/quizki-buttons.css" rel="stylesheet" type="text/css"/>
		<link href="../css/quizki-switch.css" rel="stylesheet" type="text/css"/>		
		<link href="../css/quizki-text-input-fields.css" rel="stylesheet" type="text/css"/>
		<link href="../css/quizki-text-input-fields-question.css" rel="stylesheet" type="text/css"/>
		<link href="../css/quizki-header-elements.css" rel="stylesheet" type="text/css"/>
		<link href="../css/quizki-attribute-wells.css" rel="stylesheet" type="text/css"/>
		
		<link href="../css/Question.css" rel="stylesheet" type="text/css"/>
		
		<link rel="shortcut icon" href="images/favicon.ico" />
		
		<jsp:text>
			<![CDATA[ <script data-main="../js/quizki.js" src="../js/require.js"></script> ]]>
						
			<![CDATA[ <script src="../pkgs/jquery/jquery-1.10.1.min.js" type="text/javascript"></script> ]]>
			<![CDATA[ <script src="../pkgs/jquery-ui/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script> ]]>
			<![CDATA[ <script src="../pkgs/tiny_mce/tiny_mce.js" type="text/javascript" ></script> ]]>
			<![CDATA[ <script src="../pkgs/Flat-UI-master/js/bootstrap.min.js" type="text/javascript" ></script> ]]>
			<![CDATA[ <script src="../pkgs/bootstrap-switch-master/js/bootstrapSwitch.js" type="text/javascript" ></script> ]]>
			
			<![CDATA[ <script src="../pkgs/underscore.js/underscore.js" type="text/javascript" ></script> ]]>
			<![CDATA[ <script src="../pkgs/backbone.js/backbone.js" type="text/javascript" ></script> ]]>

			<![CDATA[ <script src="../js/backbone-quizki.js" type="text/javascript"></script> ]]>

			<![CDATA[ <script src="../js/ajax/ajax-functions.js" type="text/javascript"></script> ]]>

			<![CDATA[ <script src="../js/views/views.js" type="text/javascript" ></script> ]]>
			<![CDATA[ <script src="../js/choice.js" type="text/javascript" ></script> ]]>
			<![CDATA[ <script src="../js/question.js" type="text/javascript" ></script> ]]>
			
			<![CDATA[ <script src="../js/views/question-views.js" type="text/javascript" ></script> ]]>
			<![CDATA[ <script src="../js/collections/question-collections.js" type="text/javascript" ></script> ]]>

			<![CDATA[
			<script type="text/javascript">
//					$(document).ready(function(){
//						$("#btnThumbsUp").click(function(){
//							//alert("btn pushed!");
//							$.post("/registerVote.jsp",
//							{
//								voteDirection: "up",
//								entityType: "question",
//								entityId: ${displayQuestion.id}
//							},
//							function(data,status){
//								//alert("Data: " + data + "\nStatus: " + status);
//								
//								if (status == 'success') {
//									$('#divVotingButtons').html('Your vote has been saved!');
//								}
//							});
//						});
//					});					

//					$(document).ready(function(){
//						$("#btnThumbsDown").click(function(){
//						//alert("btn pushed!");
//							$.post("/registerVote.jsp",
//							{
//								voteDirection: "down",
//								entityType: "question",
//								entityId: ${displayQuestion.id}
//							},
//							function(data,status){
//								//alert("Data: " + data + "\nStatus: " + status);
//								
//								if (status == 'success') {
//									$('#divVotingButtons').html('Your vote has been saved!');
//								}
//							});
//						});
//					});					
		    </script> ]]>			

			<![CDATA[
				<script type="text/javascript">
			]]>

			// depending on how this page was called, these variables may or may not be present.. so rather than get 
			//  exceptions reporting their absence or malformedness, they are defined as undefined if not present.
			
			<c:choose><c:when test="${not empty sessionScope.userSuppliedAnswerToStringQuestion}">
				<![CDATA[ var userSuppliedAnswerWhenQuestionIsOfTypeString = ${userSuppliedAnswerToStringQuestion}; ]]>
			</c:when>
			<c:otherwise>
				<![CDATA[ var userSuppliedAnswerWhenQuestionIsOfTypeString = undefined; ]]>
			</c:otherwise>
			</c:choose>
			<c:choose><c:when test="${not empty sessionScope.listOfSequenceNumbersTheUserChose}">
				<![CDATA[ var sequenceNumbersTheUserChose = ${listOfSequenceNumbersTheUserChose}; ]]>
			</c:when>
			<c:otherwise>
				<![CDATA[ var sequenceNumbersTheUserChose = undefined; ]]>
			</c:otherwise>
			</c:choose>
			<c:choose><c:when test="${not empty sessionScope.listOfSequenceNumbersForChoices}">
				<![CDATA[ var fieldSequenceNumbers = ${listOfSequenceNumbersForChoices}; ]]>
			</c:when>
			<c:otherwise>
				<![CDATA[ var fieldSequenceNumbers = undefined; ]]>
			</c:otherwise>
			</c:choose>
			<c:choose><c:when test="${not empty sessionScope.listOfFieldnamesUserInteractedWithAsAnswersOnCurrentQuestion}">
				<![CDATA[ var selected = ${listOfFieldnamesUserInteractedWithAsAnswersOnCurrentQuestion}; ]]>
			</c:when>
			<c:otherwise>
				<![CDATA[ var selected = undefined; ]]>
			</c:otherwise>
			</c:choose>
			<c:choose><c:when test="${not empty sessionScope.listOfIndexesToChoiceListBySequenceNumber}">
				<![CDATA[ var indexesBySequenceNumber = ${listOfIndexesToChoiceListBySequenceNumber}; ]]>
			</c:when>
			<c:otherwise>
				<![CDATA[ var indexesBySequenceNumber = undefined; ]]>
			</c:otherwise>
			</c:choose>

			<![CDATA[
				</script>
			]]>
			
			<![CDATA[
				<script type="text/javascript">

			    $(document).ready(function() {
			    	model_constructor_factory.put("questionChoiceCollection", function() { return new Quizki.Collection(); });
			    	model_constructor_factory.put("currentQuestion", getFunctionToRetrieveCurrentQuestion);
			    	model_constructor_factory.put("currentUserId", function() { return ${sessionScope.currentUserEntity.id}; });
			    	model_constructor_factory.put("answersToTheMostRecentExam", function() { var ans = '${sessionScope.answersToTheMostRecentExam}'; if (ans.length > 0) return new Backbone.Collection(JSON.parse(ans).answers); else return undefined; });
			    	model_constructor_factory.put("answerCorrectnessModel", function() { return { correctAndChosen:0, correctButNotChosen:0, incorrectAndChosen:0, totalChoicesCount:0, overallAnsweredCorrectly:true };} );
			    		
			    	var questionChoiceCollection = model_factory.get("questionChoiceCollection" );
			    	var currentQuestion = model_factory.get("currentQuestion");
			    	
			    	var _inExamContext = (model_factory.get("answersToTheMostRecentExam") !== undefined);
			    	
		    		questionChoiceCollection.addArray(currentQuestion.getChoices());
			    	
			    	var bv_questionCreatedByView = new Quizki.CreatedByView({ el: $("#divCreatedBy") });
			    	
			    	var bv_questionAndTextView = new Quizki.QuestionTextAndDescriptionView({ el: $("#divTextarea"), readOnly: true });
			    	
			    	var bv_questionTypeView = new Quizki.QuestionTypeView({ el: $("#questionTypeView"), readOnly: true });
			    	//var bv_enterNewChoiceView = new Quizki.EnterNewChoiceView({ el: $("#enterNewChoiceContainerDiv"), readOnly: true });
					var bv_questionChoiceList = new Quizki.ChoiceListView({ el: $("#choiceListDiv"), readOnly: true, inExamContext: _inExamContext });
					
					bv_questionChoiceList.render();
					
					var bv_difficultyChooser = new Quizki.DifficultyChooserView({ el: $("#difficultyChooserElement"), id:currentQuestion.getDifficultyId(), readOnly: true});
					
					var bv_topicsWell = new Quizki.QuestionAttributeWellView({el:$("#topicsWell"), viewKey:'topics', modelToListenTo:'currentQuestion', modelEventToListenFor:'reset', readOnly: true });
					var bv_referencesWell = new Quizki.QuestionAttributeWellView({el:$("#referencesWell"), viewKey:'references', modelToListenTo:'currentQuestion', modelEventToListenFor:'reset', readOnly: true });
					
					addCSVItemsToWell(bv_topicsWell, currentQuestion.getTopics());
					addCSVItemsToWell(bv_referencesWell, currentQuestion.getReferences());

					var afFunc = undefined;
					
					if (_inExamContext) {
						afFunc = function () {
							var acm = model_factory.get("answerCorrectnessModel");
							var msgArr = new Array();

							if (acm.overallAnsweredCorrectly) {
								msgArr.push('Great! You answered this question correctly!');
							}
							else {
								msgArr.push('You missed this question!');
	
								if (acm.correctAndChosen > 0) {
									msgArr.push('You made ' + acm.correctAndChosen + ' correct choice' + (acm.correctAndChosen == 1 ? '.' : 's.') );
								}
								
								if (acm.incorrectAndChosen > 0) {
									msgArr.push(' You made ' + acm.incorrectAndChosen + ' incorrect choice' + (acm.incorrectAndChosen == 1 ? '.' : 's.') );
								}

								if (acm.correctButNotChosen > 0) {
									msgArr.push(' There ' + (acm.correctButNotChosen < 2 ? 'was ' : 'were ') + acm.correctButNotChosen + ' correct choice' + (acm.correctButNotChosen == 1 ? ' ' : 's ') + 'that you did not choose.');
								}
							}
							
							populateAlertDiv(msgArr, acm.overallAnsweredCorrectly ? "alert-success" : "alert-error");
						}
					};
					
			    	var bv_header = new Quizki.QuestionHeaderButtonView({ el: $("#divQuestionHeader"), showEditBtn: (!_inExamContext && ${shouldAllowQuestionEditing}), showBackBtn: (_inExamContext), afterDisplayFunction:afFunc });
			    });
			    
				// this same code is in displayQuestion.jsp.. extract it somewhere
			    function addCSVItemsToWell(view, jsonListOfItems) {
					var items = '';
					var arr = new Array();
				    var collection = model_factory.get(view.getModelKey());
				    						
					if (jsonListOfItems.length > 0) {
						items = _.pluck(jQuery.parseJSON(jsonListOfItems), 'text');
			    
						for (var i=0; i<items.length; i++) {
							arr.push(items[i]);
						}
				    	
				    	arr = method_utility.giveAttributeNamesToElementsOfAnArray("text",arr);
			    	}

			    	collection.addArray(arr);
			    }
			    
			    function getEntityId() {
			    	return $("#idEntityIdField").val();
			    }
			    
				function populateAlertDiv(msgsArr, alertClassName) {
					var msgs = "";
					
					for (var i=0; i<msgsArr.length; i++) {
						msgs += msgsArr[i] + '<br/>';
					}
					
					var $idAlertDiv = $('div.container').find('#idAlertDiv'); 
											
					$idAlertDiv.html('');
					$idAlertDiv.html(msgs);
					$idAlertDiv.addClass(alertClassName);
					$idAlertDiv.removeClass('hidden');
				}
				
				function clearAlertDiv() {
					$('div.container').find('#idAlertDiv').addClass('hidden');
				}
			    
				</script>
			]]>
		</jsp:text>

	</head>
<body>

	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="content">

		<div id="idAlertDiv" class="alert hidden">.</div>

		<div id="divQuestionHeader" class="row">
		..
		</div>

		<hr style="margin-top:1px; margin-bottom:5px; padding:1px;"/>

		<div id="divCreatedBy">..</div>

		<div >
			<div id="divTextarea">
			..
			</div>
			
			<table class="span12" style="margin-left:0px">
				<tr>
					<td style="width:25%; vertical-align:top;">
						<div class="entityAttributeHeaderName">Difficulty <br/></div>
						<div id="difficultyChooserElement"></div>
					</td>
					<td style="width:33%; vertical-align:top;">
						<div class="entityAttributeHeaderName">Topics<br/> </div>
						<div id="topicsWell"></div>
					</td>
					<td style="width:41%; vertical-align:top;">
						<div class="entityAttributeHeaderName">References<br/> </div>
						<div id="referencesWell"></div>
					</td>
				</tr>
			</table>

			<div class="row">
				<div class="span3">
					<h1 class="questionPageSectionHeader">Answer</h1>
				</div>
			</div> 

	<hr style="margin-top:1px; margin-bottom:5px; padding:1px;"/>

			<div id="questionTypeView">..</div>

			<div id="choiceListDiv">
				..
			</div>
		</div>

	<br/>

	<div>
		<input style="display:none;" id="idEntityIdField" type="text" name="entityIdField" value="${sessionScope.entityIdFilter}"/>
	</div>

</div>
</div>

<br/>
<br/>
<br/>

</body>
</html>
</jsp:root>