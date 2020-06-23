shader_type canvas_item;

const float PI =3.14159265359;

uniform vec2 u_mousePos;

float plot(vec2 st, float pct){
  return  smoothstep( pct-0.02, pct, st.y) -
          smoothstep( pct, pct+0.02, st.y);
}

void fragment() {
	vec2 st = FRAGCOORD.xy/(1.0/SCREEN_PIXEL_SIZE);
	 float y = st.x;
	
	// float y = pow(st.x, 2.0);
	// float y = step(0.5,st.x);
	// float y = smoothstep(0.2,0.5,st.x);
	// float y = smoothstep(0.2,0.5,st.x) - smoothstep(0.5,0.8,st.x);
	// float y = (sin(st.x + TIME)+1.0)/2.0;
	// float y = (sin(st.x*20.0));
	// float y = min(0.2, st.x);
	// float y = max(0.2, st.x);
	

	vec3 color = vec3(y);

	float pct = plot(st,y);
	color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);
	COLOR = vec4(color, 1.0);
	
}
