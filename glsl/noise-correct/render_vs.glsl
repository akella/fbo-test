

//float texture containing the positions of each particle
uniform sampler2D positions;

uniform vec2 nearFar;
uniform float pointSize;

varying float size;
varying float map;
varying vec3 vPosition1;
void main() {

    //the mesh is a nomrliazed square so the uvs = the xy positions of the vertices
    vec3 pos = texture2D( positions, position.xy ).xyz;
    // get alpha channel map
    map = texture2D( positions, position.xy ).a;

    vPosition1 = pos;

    //pos now contains the position of a point in space taht can be transformed
    gl_Position = projectionMatrix * modelViewMatrix * vec4( pos, 1.0 );

    //size
    gl_PointSize = size = max( 1., ( step( 1. - ( 1. / 512. ), position.x ) ) * pointSize );


}