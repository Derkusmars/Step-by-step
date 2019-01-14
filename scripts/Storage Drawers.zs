import mods.artisanworktables.builder.RecipeBuilder;

#Drawers Single
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
[null, <minecraft:chest>, null], 
[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]])
.addOutput(<storagedrawers:basicdrawers>.withTag({material: "oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
[null, <minecraft:chest>, null], 
[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]])
.addOutput(<storagedrawers:basicdrawers>.withTag({material: "spruce"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
[null, <minecraft:chest>, null], 
[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]])
.addOutput(<storagedrawers:basicdrawers>.withTag({material: "birch"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
[null, <minecraft:chest>, null], 
[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]])
.addOutput(<storagedrawers:basicdrawers>.withTag({material: "jungle"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
[null, <minecraft:chest>, null], 
[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]])
.addOutput(<storagedrawers:basicdrawers>.withTag({material: "acacia"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
[null, <minecraft:chest>, null], 
[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]])
.addOutput(<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Drawers 1x2
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks>, <minecraft:chest>, <minecraft:planks>],
[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], 
[<minecraft:planks>, <minecraft:chest>, <minecraft:planks>]])
.addOutput(<storagedrawers:basicdrawers:1>.withTag({material: "oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:1>, <minecraft:chest>, <minecraft:planks:1>],
[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>], 
[<minecraft:planks:1>, <minecraft:chest>, <minecraft:planks:1>]])
.addOutput(<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:2>, <minecraft:chest>, <minecraft:planks:2>],
[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>], 
[<minecraft:planks:2>, <minecraft:chest>, <minecraft:planks:2>]])
.addOutput(<storagedrawers:basicdrawers:1>.withTag({material: "birch"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:3>, <minecraft:chest>, <minecraft:planks:3>],
[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>], 
[<minecraft:planks:3>, <minecraft:chest>, <minecraft:planks:3>]])
.addOutput(<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:4>, <minecraft:chest>, <minecraft:planks:4>],
[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>], 
[<minecraft:planks:4>, <minecraft:chest>, <minecraft:planks:4>]])
.addOutput(<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:planks:5>, <minecraft:chest>, <minecraft:planks:5>],
[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>], 
[<minecraft:planks:5>, <minecraft:chest>, <minecraft:planks:5>]])
.addOutput(<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Drawers 2x2
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:chest>, <minecraft:planks>, <minecraft:chest>],
[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], 
[<minecraft:chest>, <minecraft:planks>, <minecraft:chest>]])
.addOutput(<storagedrawers:basicdrawers:2>.withTag({material: "oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:chest>, <minecraft:planks:1>, <minecraft:chest>],
[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>], 
[<minecraft:chest>, <minecraft:planks:1>, <minecraft:chest>]])
.addOutput(<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:chest>, <minecraft:planks:2>, <minecraft:chest>],
[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>], 
[<minecraft:chest>, <minecraft:planks:2>, <minecraft:chest>]])
.addOutput(<storagedrawers:basicdrawers:2>.withTag({material: "birch"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:chest>, <minecraft:planks:3>, <minecraft:chest>],
[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>], 
[<minecraft:chest>, <minecraft:planks:3>, <minecraft:chest>]])
.addOutput(<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:chest>, <minecraft:planks:4>, <minecraft:chest>],
[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>], 
[<minecraft:chest>, <minecraft:planks:4>, <minecraft:chest>]])
.addOutput(<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:chest>, <minecraft:planks:5>, <minecraft:chest>],
[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>], 
[<minecraft:chest>, <minecraft:planks:5>, <minecraft:chest>]])
.addOutput(<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.create();
