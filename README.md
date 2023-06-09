# Godot Hider Node ![image](https://github.com/Dark-Peace/Godot-Hider-Node/blob/main/addons/Hider%20Node/Hider.png?raw=true)

Sick of having nodes you don't need all over your scenes ? You don't want to see them all but you don't want to have to toggle their visibility all the time ? This is for you ! Add it as a child to a parent node and that parent's children will only be visible in editor when you select a node inside that parent's subtree. + other similar behaviors. It works in any scene : 2D, 3D, Controls,...

Simple to use :
  1. Add the Hider to a parent node
  2. Enable the Hider by toggling the enabled property.

Now, all the nodes in the subtree, starting from the Hider's parent, will be "hidden" when you select a node outside that subtree. They will be shown again when selecting a node of that subtree or the parent node.

Nodes are hidden by changing their modulate value. However, the Hider stores the previous modulate values in its saved_states property, which is reverted back when the node is shown again.

It has a bunch of bonus properties to make your workflow even better, everything is detailed in the [documentation](https://docs.google.com/document/d/1y2aPsn72dOxQ-wBNGqLlQvrw9-SV_z12a1MradBglF4/edit?usp=sharing)

![image](https://media.discordapp.net/attachments/938432591848157215/1097194746650312730/Godot_v4.0-stable_win64_4Y1dYjn6Xk.gif?width=1166&height=571)
