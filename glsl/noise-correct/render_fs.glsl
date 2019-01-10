uniform vec2 nearFar;
uniform vec3 small;
uniform vec3 big;

varying float size;
varying float map;
varying vec3 vPosition1;
uniform sampler2D texture1;
void main()
{


	float testcolor = texture2D( texture1, abs(vPosition1.xy/100.) ).r;
	// the only difference - reading testcolor here
	vec3 final = mix(vec3(1.,0.,0.),vec3(0.,1.,0.),testcolor);
    gl_FragColor = vec4( final, .2 );
}