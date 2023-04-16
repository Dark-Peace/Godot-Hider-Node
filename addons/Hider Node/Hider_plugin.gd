@tool
extends EditorPlugin

var selection = get_editor_interface().get_selection()
#var inspector_plugin = preload("res://addons/Hider Node/EditInspectPlugin.gd")


func _enter_tree():
	add_custom_type("Hider", "Node", preload("res://addons/Hider Node/Hider.gd"), preload("res://addons/Hider Node/Hider.png"))
#	add_custom_type("Hider2D", "Node2D", preload("res://addons/Hider Node/Hider.gd"), preload("res://addons/Hider Node/Hider2D.png"))
#	add_custom_type("Hider3D", "Node3D", preload("res://addons/Hider Node/Hider.gd"), preload("res://addons/Hider Node/Hider3D.png"))
#	add_custom_type("HiderGUI", "Control", preload("res://addons/Hider Node/Hider.gd"), preload("res://addons/Hider Node/HiderGUI.png"))
	
#	inspector_plugin._selection = get_editor_interface().get_selection()
	selection.connect("selection_changed", Callable(self,"_on_selection_changed"))
#	add_inspector_plugin(inspector_plugin)
	pass


func _exit_tree():
	remove_custom_type("Hider")
#	remove_custom_type("Hider2D")
#	remove_custom_type("Hider3D")
#	remove_custom_type("HiderGUI")
#	remove_inspector_plugin(inspector_plugin)
	pass

func _on_selection_changed():
	var selected_nodes:Array[Node] = selection.get_selected_nodes()
	var hiders:Array[Node] = get_tree().get_nodes_in_group("@Hider")
	var enabled_hiders:Array[Node]
	var current_scene = get_tree().edited_scene_root
	
	for node in selected_nodes:
		for hider in hiders:
			if not hider.enabled: continue
			if (String(current_scene.get_path_to(hider.get_parent()))+"/") in (String(current_scene.get_path_to(node))+"/"):
				enabled_hiders.append(hider)
				hiders.erase(hider)
	
	for hider in hiders:
		if not hider.active: continue
		hider.hide_nodes()
		hider.active = false
	for hider in enabled_hiders:
		hider.show_nodes()
		hider.active = true
	
