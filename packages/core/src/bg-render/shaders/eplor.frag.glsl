#version 300 es
precision highp float;uniform float IIIlllllllIIIllIl,lIIIlllllIllIl,IIIlllIlIIllll,IIIIIllllllIll;uniform sampler2D IlllIIlIlllIll;uniform vec2 IIlIlIIlIlIllI,IllIlllIlIIlllI;out vec4 lIIlIIIIIlIlIlllIIIIlIIl;float lIlIIllllIllIll(float IIIlIIlIIIlllIII){IIIlIIlIIIlllIII-=0.;return sin(IIIlIIlIIIlllIII);}float lIlIlllllIllIll(float IIIlIIlIIIlllIII){IIIlIIlIIIlllIII+=acos(0.);return sin(IIIlIIlIIIlllIII);}float IllllIIlIllII(float llIIllIllIIIllI){return fract(lIlIIllllIllIll(llIIllIllIIIllI)*43758.5453);}float llIlIIllllIII(vec2 IIIlIIlIIIlllIII){vec2 IIllIlIIlllI=floor(IIIlIIlIIIlllIII),lIlIllIIIIIlIl=fract(IIIlIIlIIIlllIII);lIlIllIIIIIlIl=lIlIllIIIIIlIl*lIlIllIIIIIlIl*(3.-2.*lIlIllIIIIIlIl);float lIlIlIlIlIlIIl=IIllIlIIlllI.x+IIllIlIIlllI.y*57.;return mix(mix(IllllIIlIllII(lIlIlIlIlIlIIl),IllllIIlIllII(lIlIlIlIlIlIIl+1.),lIlIllIIIIIlIl.x),mix(IllllIIlIllII(lIlIlIlIlIlIIl+57.),IllllIIlIllII(lIlIlIlIlIlIIl+58.),lIlIllIIIIIlIl.x),lIlIllIIIIIlIl.y);}vec2 lllIIIIIIllIlIIIlI(vec2 IlllIIlIIIIlIIII){float lIIlIllIIIlIl=llIlIIllllIII(IlllIIlIIIIlIIII*vec2(1)*3.5+.1)*4.2831*mix(.2,1.,IIIlllllllIIIllIl);IlllIIlIIIIlIIII+=vec2(-1,.5);return vec2(lIlIlllllIllIll(lIIlIllIIIlIl),lIlIIllllIllIll(lIIlIllIIIlIl));}void lllIIIIllIlIIIIIlI(inout vec2 lllIllIlIIIIIIIIlI,float llllIllIIIIIIIIIlI){lllIllIlIIIIIIIIlI=cos(llllIllIIIIIIIIIlI)*lllIllIlIIIIIIIIlI+sin(llllIllIIIIIIIIIlI)*vec2(lllIllIlIIIIIIIIlI.y,-lllIllIlIIIIIIIIlI.x);}float lllIIIIIIIlllIIIlI(vec2 lIIIIlllllIIIIIIlI,float IIllllIIllIIIIIIlI){return(length(lIIIIlllllIIIIIIlI/IIllllIIllIIIIIIlI)-1.)*IIllllIIllIIIIIIlI;}void IIllIIIIIllIlIlIlI(inout float IIllllIIllIIIIIIlI,vec2 lIIIIlllllIIIIIIlI){lIIIIlllllIIIIIIlI*=1e3;if(mod(floor(lIIIIlllllIIIIIIlI.y/1e3+.5),2.)==0.)lIIIIlllllIIIIIIlI.x+=5e3;vec2 lIIIIlIllllIIIIIlI=mod(lIIIIlllllIIIIIIlI+5500.,1e3)-5e2,lIlIIIIIlIlllIIIlI=floor(lIIIIlllllIIIIIIlI/1e3+.5);float lIIIlIlllIIIlIIIlI=fract(sin(dot(lIlIIIIIlIlllIIIlI.xy,vec2(12.9898,78.233)))*43758.5453);lIIIIlIllllIIIIIlI.x*=mix(.9,.6,fract(lIIIlIlllIIIlIIIlI*11.13+11.13))*1.2;lIIIIlIllllIIIIIlI.y*=mix(.9,.6,fract(lIIIlIlllIIIlIIIlI*17.17+17.17))*.8;float lIlIIIIlIllIlIIIlI=lllIIIIIIIlllIIIlI(lIIIIlIllllIIIIIlI,mix(30.,70.,fract(lIIIlIlllIIIlIIIlI*7.77+7.77)));IIllllIIllIIIIIIlI+=1.-smoothstep(0.,1.,lIlIIIIlIllIlIIIlI*.005);}vec3 llllllIIIIlll(sampler2D IIIlIIlllIIIllIIlI,vec2 IlllIIIlIIIIllIIlI){IlllIIIlIIIIllIIlI*=mix(vec2(.6,1),vec2(1),IIIIIllllllIll);vec3 IIlllIIlIIllIIIIlI=texture(IIIlIIlllIIIllIIlI,IlllIIIlIIIIllIIlI*1.2*mix(vec2(.6),vec2(1),IIIIIllllllIll)+lIIIlllllIllIl*.02).xyz;float IIlIIlIllIIIllIIlI=lIIIlllllIllIl*.06;vec3 IIlIlIIllllIIIIIlI=texture(IIIlIIlllIIIllIIlI,IlllIIIlIIIIllIIlI*1.2+IIlIIlIllIIIllIIlI).xyz,IIlIlIIllIIIllIIlI=texture(IIIlIIlllIIIllIIlI,-IlllIIIlIIIIllIIlI+IIlIIlIllIIIllIIlI).xyz;float IllIIllIIIIIllIIlI=lIIIlllllIllIl*.001,IIllllIIllIIIIIIlI=0.,IIlIIllIIIlllIIIlI=0.;lllIIIIllIlIIIIIlI(IlllIIIlIIIIllIIlI,.2-IllIIllIIIIIllIIlI*3.);IIllIIIIIllIlIlIlI(IIllllIIllIIIIIIlI,IlllIIIlIIIIllIIlI+vec2(-50.*IllIIllIIIIIllIIlI,0));lllIIIIllIlIIIIIlI(IlllIIIlIIIIllIIlI,.3-IllIIllIIIIIllIIlI*50.);IIllIIIIIllIlIlIlI(IIlIIllIIIlllIIIlI,IlllIIIlIIIIllIIlI+vec2(-70.*IllIIllIIIIIllIIlI+33.,-33));lllIIIIllIlIIIIIlI(IlllIIIlIIIIllIIlI,2.-IllIIllIIIIIllIIlI*50.);IIllIIIIIllIlIlIlI(IIlIIllIIIlllIIIlI,IlllIIIlIIIIllIIlI+vec2(-10.*IllIIllIIIIIllIIlI+11.,-11));return mix(mix(IIlllIIlIIllIIIIlI,IIlIlIIllllIIIIIlI,IIllllIIllIIIIIIlI),IIlIlIIllIIIllIIlI,IIlIIllIIIlllIIIlI);}void main(){vec2 lIIlllIlllllIll=gl_FragCoord.xy/IIlIlIIlIlIllI.xy,lIIIlIIllIlIIlI=lIlIIllllIllIll(lIIIlllllIllIl*.2)*.01+.5+lIIlllIlllllIll,lIIllIIlIIIllI=lIIIlIIllIlIIlI*.77f+IllIlllIlIIlllI+vec2(-.05,0),lIIllllIIIIllllII,lIlIIlIlIIIllIll;lIIllIIlIIIllI.x*=IIlIlIIlIlIllI.x/IIlIlIIlIlIllI.y*mix(.8,1.,IIIIIllllllIll);lIIllllIIIIllllII=(lIIllIIlIIIllI-lIIIlIIllIlIIlI)/2.+vec2(.2,.35);float lIIIlIllIllIlIIl=0.f;vec3 lIIIlIlIIIlIlIIl=vec3(0);lIlIIlIlIIIllIll=lIIllIIlIIIllI;for(int IllIlIIlIIlllllIIIl=0;IllIlIIlIIlllllIIIl<32;IllIlIIlIIlllllIIIl++){vec2 lIlllIlllIlllII=lllIIIIIIllIlIIIlI(lIIllIIlIIIllI),lIIIlllllIIIIllI;float lIIlIlIIlIIlIllI=float(IllIlIIlIIlllllIIIl)/32.f;lIIIlllllIIIIllI=vec2(lIIllllIIIIllllII.x+(lIIllIIlIIIllI.x-lIIllllIIIIllllII.x)*lIlIlllllIllIll(-lIIIlllllIllIl*.2)-(lIIllIIlIIIllI.y-lIIllllIIIIllllII.y)*lIlIIllllIllIll(-lIIIlllllIllIl*.2),lIIllllIIIIllllII.y+(lIIllIIlIIIllI.x-lIIllllIIIIllllII.x)*lIlIIllllIllIll(-lIIIlllllIllIl*.2)+(lIIllIIlIIIllI.y-lIIllllIIIIllllII.y)*lIlIlllllIllIll(-lIIIlllllIllIl*.2));lIIIlIlIIIlIlIIl+=llllllIIIIlll(IlllIIlIlllIll,.5+lIIllllIIIIllllII+(lIIIlllllIIIIllI-lIIllllIIIIllllII)/(vec2(mix(2.,1.,IIIlllllllIIIllIl))+(IIIlllIlIIllll*1.5+.2)*(1.-pow(lIIlllIlllllIll.x*(1.-lIIlllIlllllIll.y)*lIIlllIlllllIll.y*(1.-lIIlllIlllllIll.x)*15.,2.)*.9))).xyz;lIIIlIllIllIlIIl+=4.f*lIIlIlIIlIIlIllI*(1.f-lIIlIlIIlIIlIllI);lIIllIIlIIIllI+=.0024f*lIlllIlllIlllII*mix(5.,lIlIIllllIllIll(lIIIlllllIllIl)*2.5+2.5,IIIIIllllllIll);lIlIIlIlIIIllIll+=.05f*lIlllIlllIlllII;}lIIIlIlIIIlIlIIl/=lIIIlIllIllIlIIl;lIIIlIlIIIlIlIIl*=1.3f;lIIIlIlIIIlIlIIl=1.f-exp(-lIIIlIlIIIlIlIIl);lIIIlIlIIIlIlIIl=pow(lIIIlIlIIIlIlIIl,vec3(3));lIIIlIlIIIlIlIIl*=1.25;lIIlIIIIIlIlIlllIIIIlIIl=vec4(lIIIlIlIIIlIlIIl,1);}