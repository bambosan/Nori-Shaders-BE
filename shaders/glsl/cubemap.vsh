#version 300 es

precision highp float;
uniform mat4 WORLDVIEWPROJ;
in vec4 POSITION;
out vec3 sunc;
out vec3 moonc;
out vec3 zcol;
out vec3 cpos;
out vec3 lpos;
out vec3 tlpos;
#include "shader_settings.txt"
#include "common.glsl"
void main(){
	gl_Position = WORLDVIEWPROJ * POSITION;
	cpos = POSITION.xyz;
	clpos(tlpos, lpos);
	clig(lpos, sunc, moonc, zcol);
}
