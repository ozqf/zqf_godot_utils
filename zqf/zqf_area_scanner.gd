extends Area3D

var _areas:Array[Area3D] = []
var _bodies:Array[PhysicsBody3D] = []

func _ready():
	self.connect("area_entered", _area_entered)
	self.connect("area_exited", _area_exited)
	self.connect("body_entered", _body_entered)
	self.connect("body_exited", _body_exited)

func has_overlaps() -> bool:
	return (_areas.size() + _bodies.size()) > 0

func _area_entered(area:Area3D) -> void:
	_areas.push_back(area)

func _area_exited(area:Area3D) -> void:
	var i:int = _areas.find(area)
	if i == -1:
		return
	_areas.remove_at(i)

func _body_entered(body:Node3D) -> void:
	_bodies.push_back(body)

func _body_exited(body:Node3D) -> void:
	var i:int = _bodies.find(body)
	if i == -1:
		return
	_bodies.remove_at(i)
