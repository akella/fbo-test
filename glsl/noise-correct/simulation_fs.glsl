
// simulation

varying vec2 vUv;
uniform sampler2D texture;
uniform sampler2D texture1;
uniform float timer;
uniform float frequency;
uniform float amplitude;
uniform float maxDistance;



void main() {

    vec3 pos = texture2D( texture, vUv ).xyz;

    vec4 map = texture2D(texture1, abs(vec2(pos.x/100.,pos.x/100.)));

    gl_FragColor = vec4( pos, map.r );
}