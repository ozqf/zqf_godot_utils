extends Node
class_name ZqfMouseLock

var _locks:Dictionary = {}

func _refresh_mouse() -> void:
	if _locks.size() > 0:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func add_lock(_lockName:String) -> void:
	_locks[_lockName] = _lockName
	_refresh_mouse()

func remove_lock(_lockName:String) -> void:
	_locks.erase(_lockName)
	_refresh_mouse()
