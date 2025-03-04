#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <SCExtraData.h>
uniform vec4 CB3[1];
uniform sampler2D SpecularMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec3 VARYING5;

void main()
{
    vec2 f0 = (fract(VARYING1.xy) * CB3[0].xy) + VARYING2.xy;
    vec2 f1 = (fract(VARYING1.zw) * CB3[0].xy) + VARYING2.zw;
    vec2 f2 = (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw;
    vec2 f3 = VARYING1.xy * CB3[0].xy;
    vec2 f4 = VARYING1.zw * CB3[0].xy;
    vec2 f5 = VARYING3.xy * CB3[0].xy;
    vec2 f6 = (((texture2DGradARB(NormalMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(NormalMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(NormalMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z)).wy * 2.0;
    vec2 f7 = f6 - vec2(1.0);
    vec3 f8 = vec3(dot(VARYING5, VARYING0.xyz));
    vec4 f9 = ((texture2DGradARB(AlbedoMapTexture, f0, dFdx(f3), dFdy(f3)).yxzw * VARYING0.x) + (texture2DGradARB(AlbedoMapTexture, f1, dFdx(f4), dFdy(f4)).yxzw * VARYING0.y)) + (texture2DGradARB(AlbedoMapTexture, f2, dFdx(f5), dFdy(f5)).yxzw * VARYING0.z);
    vec2 f10 = f9.yz - vec2(0.5);
    float f11 = f9.x;
    float f12 = f11 - f10.y;
    vec3 f13 = vec4(vec3(f12, f11, f12) + (vec3(f10.xyx) * vec3(1.0, 1.0, -1.0)), 0.0).xyz;
    gl_FragData[0] = vec4(f13 * f13, 1.0);
    gl_FragData[1] = vec4((vec4(normalize(((mix(vec3(VARYING4.z, 0.0, -VARYING4.x), vec3(-VARYING4.y, VARYING4.x, 0.0), f8) * f7.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING4.z, VARYING4.y), f8) * f7.y)) + (VARYING4 * sqrt(clamp(1.0 + dot(vec2(1.0) - f6, f7), 0.0, 1.0)))), 0.0).xyz * 0.5) + vec3(0.5), 1.0);
    gl_FragData[2] = vec4((((texture2DGradARB(SpecularMapTexture, f0, dFdx(f3), dFdy(f3)) * VARYING0.x) + (texture2DGradARB(SpecularMapTexture, f1, dFdx(f4), dFdy(f4)) * VARYING0.y)) + (texture2DGradARB(SpecularMapTexture, f2, dFdx(f5), dFdy(f5)) * VARYING0.z)).xyz, 1.0);
}

//$$SpecularMapTexture=s3
//$$NormalMapTexture=s4
//$$AlbedoMapTexture=s0
