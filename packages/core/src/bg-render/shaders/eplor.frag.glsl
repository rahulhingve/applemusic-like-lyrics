/* 
 * 'eplor.mod.frag.glsl' using as background rendering for AMLL lyrics page
 * Copyright (C) 2023-2050 Shen Xin (Eplor)
 * This file has an additional license built on top of the GPL3.0 license
 * This file is subject to the constraints of the GNU GENERAL PUBLIC LICENSE published by the Free Software Foundation, and you are NOT ALLOWED to redistribute or modify (translate) it.
 *
 * Contact me on Instagram: https://www.instagram.com/eplormusic/
 *               QQ: 2728694055
 */
#version 300 es
precision highp float;uniform float IIIlllllllIIIllIl; uniform float lIIIlllllIllIl;uniform float IIIlllIlIIllll;uniform sampler2D IlllIIlIlllIll;uniform vec2 IIlIlIIlIlIllI;out vec4 lIIlIIIIIlIlIlllIIIIlIIl;float IllllIIlIllII(float llIIllIllIIIllI){return fract(sin(llIIllIllIIIllI)*43758.5453);}float llIlIIllllIII(in vec2 IIIlIIlIIIlllIII){vec2 IIllIlIIlllI=floor(IIIlIIlIIIlllIII);vec2 lIlIllIIIIIlIl=fract(IIIlIIlIIIlllIII);lIlIllIIIIIlIl=lIlIllIIIIIlIl*lIlIllIIIIIlIl*(3.0-2.0*lIlIllIIIIIlIl);float lIlIlIlIlIlIIl=IIllIlIIlllI.x+IIllIlIIlllI.y*57.0;return mix(mix(IllllIIlIllII(lIlIlIlIlIlIIl + 0.0),IllllIIlIllII(lIlIlIlIlIlIIl+1.0),lIlIllIIIIIlIl.x),mix(IllllIIlIllII(lIlIlIlIlIlIIl+57.0),IllllIIlIllII(lIlIlIlIlIlIIl+58.0),lIlIllIIIIIlIl.x),lIlIllIIIIIlIl.y);}vec2 lllIIIIIIllIlIIIlI(vec2 IlllIIlIIIIlIIII,in float lIIIIlllIIIIllIlIlI,vec2 IlIlIIIIlIlllIlIII){float IllIIIIlIlIl=2.15454+1.12856;float lIIlIlllIIII=0.4545112-0.3545112;float lIIIllllIIII=4551.15553-4550.65553;float lIIIlIIIIlll=lIIIllllIIII+1.0;float IIlIIlIIIlll=lIIIlIIIIlll+2.0;float lIIlIllIIIlIl=llIlIIllllIII(IlllIIlIIIIlIIII*lIIIlIIIIlll+sin(lIIlIlllIIII*lIIIlllllIllIl))*IllIIIIlIlIl;IlllIIlIIIIlIIII+=vec2(lIIlIlllIIII,lIIIllllIIII);lIIlIllIIIlIl+=llIlIIllllIII(IlllIIlIIIIlIIII*(IIlIIlIIIlll)-sin(lIIlIlllIIII*lIIIlllllIllIl))*(IllIIIIlIlIl-1.0)*IIIlllllllIIIllIl;lIIlIllIIIlIl-=lIIIIlllIIIIllIlIlI;return vec2(cos(lIIlIllIIIlIl),sin(lIIlIllIIIlIl));}float lIlIIlIIIllIIIIIlllI(vec2 llIlIlIIIlIlIllI){const int[16] lIIllIIllIlII=int[16] (0,8,2,10,12,4,14,6,3,11,1,9,15,7,13,5);vec2 llIIlIIIIlIlII=vec2(0.0f);llIIlIIIIlIlII.x=floor(mod(llIlIlIIIlIlIllI.s*IIlIlIIlIlIllI.x,4.0f));llIIlIIIIlIlII.y=floor(mod(llIlIlIIIlIlIllI.t*IIlIlIIlIlIllI.y,4.0f));int llIlIIIIIlIlII=lIIllIIllIlII[int(llIIlIIIIlIlII.x)+int(llIIlIIIIlIlII.y)*4];return float(llIlIIIIIlIlII) / 16.0f;}void main() {vec2 lIIIlIIllIlIIlI=gl_FragCoord.xy/IIlIlIIlIlIllI.xy;vec2 lIIllIIlIIIllI=lIIIlIIllIlIIlI*0.6f+vec2(-0.1f,0.2f);lIIllIIlIIIllI.x*=IIlIlIIlIlIllI.x/IIlIlIIlIlIllI.y;float lIIlIIlIIlIIIlII=lIIIlllllIllIl*0.05f+gl_FragCoord.x/max(IIlIlIIlIlIllI.x,IIlIlIIlIlIllI.y);float lIIIlIllIllIlIIl=0.0f;vec3 lIIIlIlIIIlIlIIl=texture(IlllIIlIlllIll,lIIllIIlIIIllI).xyz;vec2 lIlIIlIlIIIllIll=lIIllIIlIIIllI;for(int IllIlIIlIIlllllIIIl=0;IllIlIIlIIlllllIIIl<8;IllIlIIlIIlllllIIIl++){vec2 lIllIIlIIlIIIll=lllIIIIIIllIlIIIlI(lIIllIIlIIIllI,lIIlIIlIIlIIIlII,lIIIlIIllIlIIlI);float lIIlIlIIlIIlIllI=float(IllIlIIlIIlllllIIIl)/16.0f;float lIIllIIlIIIIlIII=4.0f*lIIlIlIIlIIlIllI*(1.0f-lIIlIlIIlIIlIllI);vec3 llIIlIIIIlIIlIII=lIIllIIlIIIIlIII*texture(IlllIIlIlllIll,lIIllIIlIIIllI).xyz;llIIlIIIIlIIlIII*=mix(vec3(0.6,0.7,0.7),vec3(1.0,0.95,0.9),0.5-0.5*dot(reflect(vec3(lIllIIlIIlIIIll,0.0),vec3(1.0,0.0,0.0)).xy,vec2(0.707)));lIIIlIlIIIlIlIIl+=lIIllIIlIIIIlIII*llIIlIIIIlIIlIII;lIIIlIllIllIlIIl+=lIIllIIlIIIIlIII;lIIllIIlIIIllI+=0.05f*lIllIIlIIlIIIll;lIlIIlIlIIIllIll+=0.01f*lIllIIlIIlIIIll;}lIIIlIlIIIlIlIIl/=lIIIlIllIllIlIIl;float lIIlllllIIIIlllI=dot(lIIIlIlIIIlIlIIl,vec3(0.333f));vec3 lIIIlIllllIIIlIIl=normalize(vec3(dFdx(lIIlllllIIIIlllI),0.5f,dFdy(lIIlllllIIIIlllI)));lIIIlIlIIIlIlIIl+=vec3(0.4f)*dot(lIIIlIllllIIIlIIl,vec3(0.7f,0.01f,0.7f));vec2 IIlllIIlIllIIlI=lllIIIIIIllIlIIIlI(lIlIIlIlIIIllIll,lIIlIIlIIlIIIlII+IIIlllIlIIllll,lIIIlIIllIlIIlI);lIIIlIlIIIlIlIIl*=0.95f+0.35f*dot(IIlllIIlIllIIlI,vec2(0.707f));lIIIlIlIIIlIlIIl*=0.20f+0.80f*pow(2.0f*lIIIlIIllIlIIlI.x*(1.0f-lIIIlIIllIlIIlI.x),0.1f);lIIIlIlIIIlIlIIl*=2.8f;lIIIlIlIIIlIlIIl=1.0f-exp(-lIIIlIlIIIlIlIIl);lIIIlIlIIIlIlIIl=pow(lIIIlIlIIIlIlIIl,vec3(2.2));lIIlIIIIIlIlIlllIIIIlIIl=vec4(lIIIlIlIIIlIlIIl,1.0f);}