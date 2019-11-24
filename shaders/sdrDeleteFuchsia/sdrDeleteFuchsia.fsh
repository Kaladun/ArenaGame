//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 base = texture2D( gm_BaseTexture, v_vTexcoord );
	float aa = base.a;
	aa = aa * clamp(step(0.001, 1.0-base.r) + step(0.001, 1.0-base.b) + step(0.001, base.g), 0.0, 1.0);
	
    gl_FragColor = vec4(base.r, base.g, base.b, aa);
}

