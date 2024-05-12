shader_type canvas_item;

uniform vec4 color : source_color;

void vertex() {}

void fragment() {
	vec4 pixelColor = texture(TEXTURE, UV);
	COLOR = pixelColor * color;
}
