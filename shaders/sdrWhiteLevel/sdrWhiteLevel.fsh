//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_Level;

void main()
{
	vec4 base = texture2D( gm_BaseTexture, v_vTexcoord );
	vec3 blend = vec3(base.r, base.g, base.b);
	blend = mix(blend, vec3(1.0,1.0,1.0), u_Level);
    gl_FragColor = vec4(blend, base.a);
}

