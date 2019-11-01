//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 white = vec4(1.0, 1.0, 1.0, v_vColour.a) * v_vColour.a;
    gl_FragColor = white; // * texture2D( gm_BaseTexture, v_vTexcoord );
}

