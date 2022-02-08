#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <TrailParams.h>
uniform vec4 CB0[53];
uniform vec4 CB1[1];
attribute vec4 POSITION;
attribute vec3 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec3 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;

void main()
{
    vec3 v0 = vec3(0.0);
    v0.x = TEXCOORD0.x;
    vec3 v1 = v0;
    v1.y = TEXCOORD0.y;
    vec2 v2 = v1.xy * TEXCOORD0.z;
    vec3 v3 = vec3(v2.x, v2.y, v1.z);
    v3.z = TEXCOORD0.z;
    gl_Position = (POSITION + (CB0[6] * CB1[0].x)) * mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    VARYING0 = v3;
    VARYING1 = TEXCOORD1 * 0.0039215688593685626983642578125;
    VARYING2 = CB0[7].xyz - POSITION.xyz;
}

