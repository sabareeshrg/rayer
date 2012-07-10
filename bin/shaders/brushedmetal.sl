/************************************************************************
 * brushedmetal.sl
 *
 * Description:
 *   Simple anisotropic metal shader.
 * 
 * Parameters:
 *   Ka, Kd, Ks - the usual meaning
 *   uroughness, vroughness - separate roughnesses for u and v directions
 *
 * The Blue Moon Rendering Tools (BMRT) are:
 * (c) Copyright 1990-2000 Exluna, Inc. and Larry Gritz. All rights reserved.
 *
 * Reference:
 *   _Advanced RenderMan: Creating CGI for Motion Picture_, 
 *   by Anthony A. Apodaca and Larry Gritz, Morgan Kaufmann, 1999.
 ************************************************************************/


#include "material.h"

surface
brushedmetal ( float Ka = 1, Kd = 0.1, Ks = .9;
               float uroughness = 0.15, vroughness = 0.5; )
{
    normal Nf = faceforward (normalize(N), I);
    Ci = MaterialBrushedMetal (Nf, Cs, Ka, Kd, Ks, 
			       normalize(dPdu), uroughness, vroughness);
    Oi = Os;  Ci *= Oi;
}
