#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[53];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D Tc2DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec2 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = length(VARYING4.xyz);
    vec3 f1 = VARYING4.xyz / vec3(f0);
    float f2 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f3 = texture(Tc2DiffuseMapTexture, VARYING1);
    float f4 = f3.w;
    vec4 f5 = vec4(mix(vec4(texture(DiffuseMapTexture, VARYING0).xyz * VARYING2.xyz, f4).xyz, f3.xyz, vec3(f4)), 0.0);
    vec4 f6 = vec4(f3.xyz, 0.0);
    bvec4 f7 = bvec4(!(CB3[0].x == 0.0));
    vec2 f8 = texture(NormalMapTexture, VARYING1).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f2;
    vec4 f12 = texture(SpecularMapTexture, VARYING1);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f10));
    vec3 f17 = vec4(vec4(f7.x ? f5.x : f6.x, f7.y ? f5.y : f6.y, f7.z ? f5.z : f6.z, f7.w ? f5.w : f6.w).xyz, VARYING2.w).xyz;
    vec3 f18 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f19 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f20 = VARYING3.yzx - (VARYING3.yzx * f19);
    vec4 f21 = vec4(clamp(f19, 0.0, 1.0));
    vec4 f22 = mix(texture(LightMapTexture, f20), vec4(0.0), f21);
    vec4 f23 = mix(texture(LightGridSkylightTexture, f20), vec4(1.0), f21);
    vec3 f24 = (f22.xyz * (f22.w * 120.0)).xyz;
    float f25 = f23.x;
    vec4 f26 = texture(ShadowMapTexture, f18.xy);
    float f27 = f18.z;
    vec3 f28 = (f17 * f17).xyz;
    float f29 = CB0[26].w * f2;
    float f30 = max(f12.y, 0.04500000178813934326171875);
    vec3 f31 = reflect(-f1, f16);
    float f32 = f30 * 5.0;
    vec3 f33 = vec4(f31, f32).xyz;
    vec4 f34 = texture(PrecomputedBRDFTexture, vec2(f30, max(9.9999997473787516355514526367188e-05, dot(f16, f1))));
    float f35 = f12.x * f29;
    vec3 f36 = mix(vec3(0.039999999105930328369140625), f28, vec3(f35));
    vec3 f37 = -CB0[11].xyz;
    float f38 = dot(f16, f37) * ((1.0 - ((step(f26.x, f27) * clamp(CB0[24].z + (CB0[24].w * abs(f27 - 0.5)), 0.0, 1.0)) * f26.y)) * f23.y);
    vec3 f39 = normalize(f37 + f1);
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f30 * f30;
    float f42 = max(0.001000000047497451305389404296875, dot(f16, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (f36 * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = 1.0 - f35;
    float f51 = f29 * f50;
    vec3 f52 = vec3(f50);
    float f53 = f34.x;
    float f54 = f34.y;
    vec3 f55 = ((f36 * f53) + vec3(f54)) / vec3(f53 + f54);
    vec3 f56 = f52 - (f55 * f51);
    vec3 f57 = f16 * f16;
    bvec3 f58 = lessThan(f16, vec3(0.0));
    vec3 f59 = vec3(f58.x ? f57.x : vec3(0.0).x, f58.y ? f57.y : vec3(0.0).y, f58.z ? f57.z : vec3(0.0).z);
    vec3 f60 = f57 - f59;
    float f61 = f60.x;
    float f62 = f60.y;
    float f63 = f60.z;
    float f64 = f59.x;
    float f65 = f59.y;
    float f66 = f59.z;
    vec3 f67 = (mix(textureLod(PrefilteredEnvIndoorTexture, f33, f32).xyz * f24, textureLod(PrefilteredEnvTexture, f33, f32).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f31.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f25)) * f55) * f29;
    vec3 f68 = ((((((((f52 - (f47 * f51)) * CB0[10].xyz) * f40) + (CB0[12].xyz * (f50 * clamp(-f38, 0.0, 1.0)))) + (f56 * (((((((CB0[35].xyz * f61) + (CB0[37].xyz * f62)) + (CB0[39].xyz * f63)) + (CB0[36].xyz * f64)) + (CB0[38].xyz * f65)) + (CB0[40].xyz * f66)) + (((((((CB0[29].xyz * f61) + (CB0[31].xyz * f62)) + (CB0[33].xyz * f63)) + (CB0[30].xyz * f64)) + (CB0[32].xyz * f65)) + (CB0[34].xyz * f66)) * f25)))) + (CB0[27].xyz + (CB0[28].xyz * f25))) * f28) + (((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[10].xyz) + f67)) + ((f24 * mix(f28, f67 * (1.0 / (max(max(f67.x, f67.y), f67.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f56) * (f29 * (1.0 - f25)))) * 1.0);
    vec4 f69 = vec4(f68.x, f68.y, f68.z, vec4(0.0).w);
    f69.w = VARYING2.w;
    float f70 = clamp(exp2((CB0[13].z * f0) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f71 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f70) * 5.0).xyz;
    bvec3 f72 = bvec3(!(CB0[13].w == 0.0));
    vec3 f73 = sqrt(clamp(mix(vec3(f72.x ? CB0[14].xyz.x : f71.x, f72.y ? CB0[14].xyz.y : f71.y, f72.z ? CB0[14].xyz.z : f71.z), f69.xyz, vec3(f70)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f74 = vec4(f73.x, f73.y, f73.z, f69.w);
    f74.w = VARYING2.w;
    _entryPointOutput = f74;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$Tc2DiffuseMapTexture=s0
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
