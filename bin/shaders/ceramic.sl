/****************************************************************************
 * ceramic.sl - simple ceramic surface
 *
 * The Blue Moon Rendering Tools (BMRT) are:
 * (c) Copyright 1990-2000 Exluna, Inc. and Larry Gritz. All rights reserved.
 ****************************************************************************/


#include "material.h"


surface
ceramic ( float Ka = 1, Kd = 0.5, Ks = .5, roughness = 0.1;
	  float Kr = 1, blur = 0, eta = 1.5; 
	  float specsharpness = 0.5;
	  DECLARE_DEFAULTED_ENVPARAMS;)
{
    normal Nf = faceforward (normalize(N), I);
    Ci = MaterialCeramic (Nf, Cs, Ka, Kd, Ks, roughness, specsharpness);
    Oi = Os;  Ci *= Oi;
}
