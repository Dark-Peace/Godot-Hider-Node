# Godot Hider Node

Sick of having nodes you don't need all over your scenes ? You don't want to see them all but you don't want to have to toggle their visibility all the time ? This is for you ! Add it as a child to a parent node and that parent's children will only be visible in editor when you select a node inside that parent's subtree. + other similar behaviors.

Simple to use :
  1. Add the Hider to a parent node
  2. Enable the Hider by toggling the enabled property.

Now, all the nodes in the subtree, starting from the Hider's parent, will be "hidden" when you select a node outside that subtree. They will be shown again when selecting a node of that subtree or the parent node.

Nodes are hidden by changing their modulate value. However, the Hider stores the previous modulate values in its saved_states property, which is reverted back when the node is shown again.

It has a bunch of bonus properties to make your workflow even better, everything is detailed in the [documentation](https://docs.google.com/document/d/1y2aPsn72dOxQ-wBNGqLlQvrw9-SV_z12a1MradBglF4/edit?usp=sharing)

![image](https://user-images.githubusercontent.com/74102789/232339314-996f5208-e5ed-48d1-9736-589babf002ba.png)
