local status, gruvboxMaterial = pcall(require, "gruvbox-material")
if (not status) then return end

gruvboxMaterial.setup() {
  gruvbox_material_background = hard
}
