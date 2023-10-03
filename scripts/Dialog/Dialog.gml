function Dialog() constructor {
	
	_dialogs = [];
	
	add = function(_sprite, _message, _first_action, _second_action) {
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
			first_action: _first_action,
			second_action: _second_action,
		});
	}
	
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	count = function() {
		return array_length(_dialogs);
	}

}