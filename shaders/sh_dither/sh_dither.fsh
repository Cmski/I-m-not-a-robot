//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float Dither2x2(vec2 position) {
	int x = int(mod(position.x, 2.0));
	int y = int(mod(position.y, 2.0));
	int index = x + y * 2;
	
	float bayer[4];
	
	bayer[0] = 0.25;
	bayer[1] = 0.75;
	bayer[2] = 1.00;
	bayer[3] = 0.50;
	
	return bayer[index];
}

float Dither4x4(vec2 position) {
	int x = int(mod(position.x, 4.0));
	int y = int(mod(position.y, 4.0));
	int index = x + y * 4;
	
	float bayer[16];
	
	bayer[0 ] = 0.065;
	bayer[1 ] = 0.5625;
	bayer[2 ] = 0.1875;
	bayer[3 ] = 0.6875;
	bayer[4 ] = 0.8125;
	bayer[5 ] = 0.3125;
	bayer[6 ] = 0.9375;
	bayer[7 ] = 0.4375;
	bayer[8 ] = 0.25;
	bayer[9 ] = 0.75;
	bayer[10] = 0.125;
	bayer[11] = 0.625;
	bayer[12] = 1.0;
	bayer[13] = 0.5;
	bayer[14] = 0.875;
	bayer[15] = 0.375;
	
	return bayer[index];
}

float Dither8x8(vec2 position) {
    int x = int(mod(position.x, 8.0));
    int y = int(mod(position.y, 8.0));
    int index = x + y * 8;
    
    float bayer[64];
    
    bayer[ 0] = 0.015625;
    bayer[ 1] = 0.515625;
    bayer[ 2] = 0.140625;
    bayer[ 3] = 0.640625;
    bayer[ 4] = 0.046875;
    bayer[ 5] = 0.546875;
    bayer[ 6] = 0.171875;
    bayer[ 7] = 0.671875;
    bayer[ 8] = 0.765625;
    bayer[ 9] = 0.265625;
    bayer[10] = 0.890625;
    bayer[11] = 0.390625;
    bayer[12] = 0.796875;
    bayer[13] = 0.296875;
    bayer[14] = 0.921875;
    bayer[15] = 0.421875;
    bayer[16] = 0.203125;
    bayer[17] = 0.703125;
    bayer[18] = 0.078125;
    bayer[19] = 0.578125;
    bayer[20] = 0.234375;
    bayer[21] = 0.734375;
    bayer[22] = 0.109375;
    bayer[23] = 0.609375;
    bayer[24] = 0.953125;
    bayer[25] = 0.453125;
    bayer[26] = 0.828125;
    bayer[27] = 0.328125;
    bayer[28] = 0.984375;
    bayer[29] = 0.484375;
    bayer[30] = 0.859375;
    bayer[31] = 0.359375;
    bayer[32] = 0.0625;
    bayer[33] = 0.5625;
    bayer[34] = 0.1875;
    bayer[35] = 0.6875;
    bayer[36] = 0.03125;
    bayer[37] = 0.53125;
    bayer[38] = 0.15625;
    bayer[39] = 0.65625;
    bayer[40] = 0.8125;
    bayer[41] = 0.3125;
    bayer[42] = 0.9375;
    bayer[43] = 0.4375;
    bayer[44] = 0.78125;
    bayer[45] = 0.28125;
    bayer[46] = 0.90625;
    bayer[47] = 0.40625;
    bayer[48] = 0.25;
    bayer[49] = 0.75;
    bayer[50] = 0.125;
    bayer[51] = 0.625;
    bayer[52] = 0.21875;
    bayer[53] = 0.71875;
    bayer[54] = 0.09375;
    bayer[55] = 0.59375;
    bayer[56] = 1.0;
    bayer[57] = 0.5;
    bayer[58] = 0.875;
    bayer[59] = 0.375;
    bayer[60] = 0.96875;
    bayer[61] = 0.46875;
    bayer[62] = 0.84375;
    bayer[63] = 0.34375;
    
    return bayer[index];
}

void main()
{
    vec4 base_color = texture2D( gm_BaseTexture, v_vTexcoord );	
	
	float dither_value = Dither8x8(gl_FragCoord.xy);
	
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (base_color.r < dither_value){
		gl_FragColor.r = 0.0;
	} else {
		gl_FragColor.r = 1.0;	
	}
	
	if (base_color.g < dither_value){
		gl_FragColor.g = 0.0;
	} else {
		gl_FragColor.g = 1.0;	
	}
	
	if (base_color.b < dither_value){
		gl_FragColor.b = 0.0;
	} else {
		gl_FragColor.b = 1.0;	
	}
}
