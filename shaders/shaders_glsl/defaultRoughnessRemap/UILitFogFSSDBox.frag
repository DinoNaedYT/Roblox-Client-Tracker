#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <AdvancedUIShadingParams.h>
uniform vec4 CB0[53];
uniform vec4 CB2[1];
uniform vec4 CB3[2];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec3 VARYING2;
varying vec3 VARYING3;
varying vec4 VARYING4;
varying vec3 VARYING5;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 f1 = vec4(1.0, 1.0, 1.0, f0.x);
    bvec4 f2 = bvec4(CB2[0].y > 0.5);
    vec4 f3 = VARYING1 * vec4(f2.x ? f1.x : f0.x, f2.y ? f1.y : f0.y, f2.z ? f1.z : f0.z, f2.w ? f1.w : f0.w);
    vec2 f4 = abs(vec2((VARYING0.x * CB3[0].x) + CB3[0].y, (VARYING0.y * CB3[0].z) + CB3[0].w)) - CB3[1].xy;
    float f5 = length(max(f4, vec2(0.0))) + min(max(f4.x, f4.y), 0.0);
    float f6 = (f3.w * clamp(CB3[1].z - f5, 0.0, 1.0)) * clamp(f5 - CB3[1].w, 0.0, 1.0);
    vec4 f7 = f3;
    f7.w = f6;
    vec4 f8 = f7;
    f8.w = f6;
    float f9 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f10 = VARYING3.yzx - (VARYING3.yzx * f9);
    vec4 f11 = vec4(clamp(f9, 0.0, 1.0));
    vec4 f12 = mix(texture3D(LightMapTexture, f10), vec4(0.0), f11);
    vec4 f13 = mix(texture3D(LightGridSkylightTexture, f10), vec4(1.0), f11);
    vec4 f14 = texture2D(ShadowMapTexture, VARYING4.xy);
    vec3 f15 = (f8.xyz * f8.xyz).xyz;
    vec3 f16 = sqrt(clamp(mix(CB0[14].xyz, mix(f15 * CB2[0].w, (min((f12.xyz * (f12.w * 120.0)).xyz + (CB0[8].xyz + (CB0[9].xyz * f13.x)), vec3(CB0[16].w)) + (VARYING2 * ((1.0 - ((step(f14.x, VARYING4.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * f14.y)) * f13.y))) * f15, vec3(CB2[0].z)).xyz, vec3(clamp(exp2((CB0[13].z * length(VARYING5)) + CB0[13].x) - CB0[13].w, 0.0, 1.0))).xyz * CB0[15].y, vec3(0.0), vec3(1.0)));
    gl_FragData[0] = vec4(f16.x, f16.y, f16.z, f8.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
