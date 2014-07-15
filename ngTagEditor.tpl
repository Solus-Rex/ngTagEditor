<div class="tag-editor" ng-space="add()" ng-enter="add()" ng-class="{active:focus}" ng-init="focus = false" ng-click="setFocus = true">
	<span class="added tag" ng-repeat="tag in added | limitTo:5">{{tag.name}}<span class="remove" ng-click="remove($index)">x</span></span>
	<input type="hidden" name="tags" value="{{added | getIds}}"/>
	<input type="text" class="tag-input" placeholder="Tapez quelques lettres" ng-keyup="fetch()" ng-focus="focus = true" ng-blur="focus = false" focus-me="setFocus" ng-model="search"/>
	<div class="tag-suggestions" ng-show="suggestions && focus">
		<span class="title">Available tags:</span>
		<span class="tag" ng-repeat="tag in suggestions" ng-mousedown="add(tag.id, tag.name)">{{tag.name}}</span>
	</div>
</div>