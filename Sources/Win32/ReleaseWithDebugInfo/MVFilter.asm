; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.24215.1 

	TITLE	c:\github\mvtools\sources\mvfilter.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

PUBLIC	??_C@_0CM@KJOFEJH@Error?5in?5?$CFs?5?3?5vector?5clip?5must?5b@ ; `string'
PUBLIC	??_C@_0CG@PCPGAPHG@Error?5in?5?$CFs?5?3?5?$CFs?8s?5width?5is?5inco@ ; `string'
PUBLIC	??_C@_0CH@BGHCALNL@Error?5in?5?$CFs?5?3?5?$CFs?8s?5height?5is?5inc@ ; `string'
PUBLIC	??_C@_0CL@LBDNONKB@Error?5in?5?$CFs?5?3?5?$CFs?8s?5block?5size?5is@ ; `string'
PUBLIC	??_C@_0CO@ECNOAAJA@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pel?5precision@ ; `string'
PUBLIC	??_C@_0CN@LNFIKJCI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5overlap?5size?5@ ; `string'
PUBLIC	??_C@_0CL@MNGNLDOP@Error?5in?5?$CFs?5?3?5?$CFs?8s?5Y?5Ratio?5UV?5is@ ; `string'
PUBLIC	??_C@_0CL@EMEINGMI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5X?5Ratio?5UV?5is@ ; `string'
PUBLIC	??_C@_0DH@OGMALFBH@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pixel?5size?5?$CIb@ ; `string'
PUBLIC	??_C@_0CK@DJNFDJIJ@Error?5in?5?$CFs?5?3?5?$CFs?8s?5bit?5depth?5is?5@ ; `string'
;	COMDAT ??_C@_0CK@DJNFDJIJ@Error?5in?5?$CFs?5?3?5?$CFs?8s?5bit?5depth?5is?5@
CONST	SEGMENT
??_C@_0CK@DJNFDJIJ@Error?5in?5?$CFs?5?3?5?$CFs?8s?5bit?5depth?5is?5@ DB 'E'
	DB	'rror in %s : %s''s bit depth is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0DH@OGMALFBH@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pixel?5size?5?$CIb@
CONST	SEGMENT
??_C@_0DH@OGMALFBH@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pixel?5size?5?$CIb@ DB 'E'
	DB	'rror in %s : %s''s pixel size (bit depth) is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CL@EMEINGMI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5X?5Ratio?5UV?5is@
CONST	SEGMENT
??_C@_0CL@EMEINGMI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5X?5Ratio?5UV?5is@ DB 'E'
	DB	'rror in %s : %s''s X Ratio UV is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CL@MNGNLDOP@Error?5in?5?$CFs?5?3?5?$CFs?8s?5Y?5Ratio?5UV?5is@
CONST	SEGMENT
??_C@_0CL@MNGNLDOP@Error?5in?5?$CFs?5?3?5?$CFs?8s?5Y?5Ratio?5UV?5is@ DB 'E'
	DB	'rror in %s : %s''s Y Ratio UV is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CN@LNFIKJCI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5overlap?5size?5@
CONST	SEGMENT
??_C@_0CN@LNFIKJCI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5overlap?5size?5@ DB 'E'
	DB	'rror in %s : %s''s overlap size is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CO@ECNOAAJA@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pel?5precision@
CONST	SEGMENT
??_C@_0CO@ECNOAAJA@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pel?5precision@ DB 'Er'
	DB	'ror in %s : %s''s pel precision is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CL@LBDNONKB@Error?5in?5?$CFs?5?3?5?$CFs?8s?5block?5size?5is@
CONST	SEGMENT
??_C@_0CL@LBDNONKB@Error?5in?5?$CFs?5?3?5?$CFs?8s?5block?5size?5is@ DB 'E'
	DB	'rror in %s : %s''s block size is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CH@BGHCALNL@Error?5in?5?$CFs?5?3?5?$CFs?8s?5height?5is?5inc@
CONST	SEGMENT
??_C@_0CH@BGHCALNL@Error?5in?5?$CFs?5?3?5?$CFs?8s?5height?5is?5inc@ DB 'E'
	DB	'rror in %s : %s''s height is incorrect', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0CG@PCPGAPHG@Error?5in?5?$CFs?5?3?5?$CFs?8s?5width?5is?5inco@
CONST	SEGMENT
??_C@_0CG@PCPGAPHG@Error?5in?5?$CFs?5?3?5?$CFs?8s?5width?5is?5inco@ DB 'E'
	DB	'rror in %s : %s''s width is incorrect', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0CM@KJOFEJH@Error?5in?5?$CFs?5?3?5vector?5clip?5must?5b@
CONST	SEGMENT
??_C@_0CM@KJOFEJH@Error?5in?5?$CFs?5?3?5vector?5clip?5must?5b@ DB 'Error '
	DB	'in %s : vector clip must be specified', 00H	; `string'
PUBLIC	?GetVPadding@MVClip@@QBEHXZ			; MVClip::GetVPadding
PUBLIC	?GetHPadding@MVClip@@QBEHXZ			; MVClip::GetHPadding
PUBLIC	?CheckSimilarity@MVFilter@@IAEXABVMVClip@@PBDPAVIScriptEnvironment@@@Z ; MVFilter::CheckSimilarity
PUBLIC	??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z ; MVFilter::MVFilter
;	COMDAT xdata$x
xdata$x	SEGMENT
__ehfuncinfo$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
__unwindtable$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z$3
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\include\avisynth.h
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\commonfunctions.h
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\commonfunctions.h
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\commonfunctions.h
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\commonfunctions.h
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\commonfunctions.h
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\mvclip.cpp
; File c:\github\mvtools\sources\mvfilter.cpp
; File c:\github\mvtools\sources\mvclip.cpp
; File c:\github\mvtools\sources\include\avisynth.h
; File c:\github\mvtools\sources\mvfilter.cpp
;	COMDAT ??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z
_TEXT	SEGMENT
_mvClip$ = -256						; size = 240
__$EHRec$ = -12						; size = 12
_vector$ = 8						; size = 4
_filterName$ = 12					; size = 4
_env$ = 16						; size = 4
_group_len$ = 20					; size = 4
_group_ofs$ = 24					; size = 4
??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z PROC ; MVFilter::MVFilter, COMDAT
; _this$ = ecx

; 35   : {

	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR fs:0
	push	-1
	push	__ehhandler$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z
	push	eax
	mov	DWORD PTR fs:0, esp
	sub	esp, 244				; 000000f4H
	push	ebx
; File c:\github\mvtools\sources\include\avisynth.h

; 945  :   operator void*() const { return p; }

	mov	ebx, DWORD PTR _vector$[ebp]
; File c:\github\mvtools\sources\mvfilter.cpp

; 35   : {

	push	esi
	push	edi

; 36   : 	if (vector == 0)

	mov	edi, DWORD PTR _env$[ebp]
	mov	esi, ecx
	cmp	DWORD PTR [ebx], 0
	jne	SHORT $LN2@MVFilter

; 37   : 		env->ThrowError("Error in %s : vector clip must be specified", filterName); //v1.8

	push	DWORD PTR _filterName$[ebp]
	mov	eax, DWORD PTR [edi]
	push	OFFSET ??_C@_0CM@KJOFEJH@Error?5in?5?$CFs?5?3?5vector?5clip?5must?5b@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 12					; 0000000cH
$LN2@MVFilter:

; 38   : 
; 39   : 	MVClip mvClip(vector, 0, 0, env, group_len, group_ofs);

	push	DWORD PTR _group_ofs$[ebp]
	lea	ecx, DWORD PTR _mvClip$[ebp]
	push	DWORD PTR _group_len$[ebp]
	push	edi
	push	0
	push	0
	push	ebx
	call	??0MVClip@@QAE@ABVPClip@@HHPAVIScriptEnvironment@@HH@Z ; MVClip::MVClip

; 41   :    nWidth = mvClip.GetWidth();

	mov	eax, DWORD PTR _mvClip$[ebp+152]
; File c:\github\mvtools\sources\commonfunctions.h

; 25   : 	int result = 0;

	xor	edi, edi
; File c:\github\mvtools\sources\mvfilter.cpp

; 41   :    nWidth = mvClip.GetWidth();

	mov	DWORD PTR [esi+28], eax

; 42   :    nHeight = mvClip.GetHeight();

	mov	eax, DWORD PTR _mvClip$[ebp+156]
	mov	DWORD PTR [esi+32], eax

; 43   :    nHPadding = mvClip.GetHPadding();

	mov	eax, DWORD PTR _mvClip$[ebp+208]
	mov	DWORD PTR [esi+20], eax

; 44   :    nVPadding = mvClip.GetVPadding();

	mov	eax, DWORD PTR _mvClip$[ebp+212]

; 45   :    nBlkCount = mvClip.GetBlkCount();
; 46   :    nBlkSizeX = mvClip.GetBlkSizeX();
; 47   :    nBlkSizeY = mvClip.GetBlkSizeY();
; 48   :    nBlkX = mvClip.GetBlkX();
; 49   :    nBlkY = mvClip.GetBlkY();
; 50   :    nPel = mvClip.GetPel();
; 51   :    nOverlapX = mvClip.GetOverlapX();
; 52   :    nOverlapY = mvClip.GetOverlapY();
; 53   :    pixelType = mvClip.GetPixelType();
; 54   :    xRatioUV = mvClip.GetXRatioUV(); // PF
; 55   :    yRatioUV = mvClip.GetYRatioUV();

	mov	ecx, DWORD PTR _mvClip$[ebp+180]
	mov	DWORD PTR [esi+24], eax
	mov	eax, DWORD PTR _mvClip$[ebp+204]
	mov	DWORD PTR [esi+8], eax
	mov	eax, DWORD PTR _mvClip$[ebp+124]
	mov	DWORD PTR [esi+12], eax
	mov	eax, DWORD PTR _mvClip$[ebp+128]
	mov	DWORD PTR [esi+16], eax
	mov	eax, DWORD PTR _mvClip$[ebp+168]
	mov	DWORD PTR [esi], eax
	mov	eax, DWORD PTR _mvClip$[ebp+172]
	mov	DWORD PTR [esi+4], eax
	mov	eax, DWORD PTR _mvClip$[ebp+132]
	mov	DWORD PTR [esi+40], eax
	mov	eax, DWORD PTR _mvClip$[ebp+160]
	mov	DWORD PTR [esi+44], eax
	mov	eax, DWORD PTR _mvClip$[ebp+164]
	mov	DWORD PTR [esi+48], eax
	mov	eax, DWORD PTR _mvClip$[ebp+176]
	mov	DWORD PTR [esi+52], eax
	mov	eax, DWORD PTR _mvClip$[ebp+184]
	mov	DWORD PTR [esi+56], eax
	mov	DWORD PTR [esi+60], ecx
; File c:\github\mvtools\sources\commonfunctions.h

; 26   : 	while ( i > 1 ) { i /= 2; result++; }

	cmp	eax, 1
	jle	SHORT $LN39@MVFilter
	npad	7
$LL38@MVFilter:
	cdq
	inc	edi
	sub	eax, edx
	sar	eax, 1
	cmp	eax, 1
	jg	SHORT $LL38@MVFilter
$LN39@MVFilter:
; File c:\github\mvtools\sources\mvfilter.cpp

; 56   :    nLogxRatioUV = ilog2 (xRatioUV); // SubSampling shift

	mov	DWORD PTR [esi+64], edi
; File c:\github\mvtools\sources\commonfunctions.h

; 25   : 	int result = 0;

	xor	edi, edi

; 26   : 	while ( i > 1 ) { i /= 2; result++; }

	cmp	ecx, 1
	jle	SHORT $LN43@MVFilter
$LL42@MVFilter:
	mov	eax, ecx
	inc	edi
	cdq
	sub	eax, edx
	mov	ecx, eax
	sar	ecx, 1
	cmp	ecx, 1
	jg	SHORT $LL42@MVFilter
$LN43@MVFilter:
; File c:\github\mvtools\sources\mvfilter.cpp

; 59   :    bits_per_pixel = mvClip.GetBitsPerPixel();

	mov	ecx, DWORD PTR _mvClip$[ebp+192]
	mov	eax, DWORD PTR _mvClip$[ebp+188]
	mov	DWORD PTR [esi+76], ecx
; File c:\github\mvtools\sources\commonfunctions.h

; 25   : 	int result = 0;

	xor	ecx, ecx
; File c:\github\mvtools\sources\mvfilter.cpp

; 57   :    nLogyRatioUV = ilog2 (yRatioUV);

	mov	DWORD PTR [esi+68], edi

; 58   :    pixelsize = mvClip.GetPixelSize(); // PF

	mov	DWORD PTR [esi+72], eax
; File c:\github\mvtools\sources\commonfunctions.h

; 26   : 	while ( i > 1 ) { i /= 2; result++; }

	cmp	eax, 1
	jle	SHORT $LN51@MVFilter
	npad	6
$LL50@MVFilter:
	cdq
	inc	ecx
	sub	eax, edx
	sar	eax, 1
	cmp	eax, 1
	jg	SHORT $LL50@MVFilter
$LN51@MVFilter:
; File c:\github\mvtools\sources\mvfilter.cpp

; 62   :    name = filterName;

	mov	eax, DWORD PTR _filterName$[ebp]
	mov	DWORD PTR [esi+80], ecx
; File c:\github\mvtools\sources\mvclip.cpp

; 79   : }

	lea	ecx, DWORD PTR _mvClip$[ebp+64]
; File c:\github\mvtools\sources\mvfilter.cpp

; 62   :    name = filterName;

	mov	DWORD PTR [esi+84], eax
; File c:\github\mvtools\sources\mvclip.cpp

; 78   : {

	mov	DWORD PTR _mvClip$[ebp], OFFSET ??_7MVClip@@6B@

; 79   : }

	call	??1FakeGroupOfPlanes@@QAE@XZ		; FakeGroupOfPlanes::~FakeGroupOfPlanes
; File c:\github\mvtools\sources\include\avisynth.h

; 948  :   ~PClip() AVS_BakedCode( AVS_LinkCall(PClip_DESTRUCTOR)() )

	mov	DWORD PTR __$EHRec$[ebp+8], 0
	mov	eax, DWORD PTR ?AVS_linkage@@3PBUAVS_Linkage@@B ; AVS_linkage
	test	eax, eax
	je	SHORT $LN79@MVFilter
	cmp	DWORD PTR [eax], 248			; 000000f8H
	jbe	SHORT $LN79@MVFilter
	mov	eax, DWORD PTR [eax+248]
	lea	ecx, DWORD PTR _mvClip$[ebp+8]
	call	eax
$LN79@MVFilter:
; File c:\github\mvtools\sources\mvfilter.cpp

; 63   : }

	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	eax, esi
	pop	edi
	pop	esi
	mov	DWORD PTR fs:0, ecx
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z$3:
	call	DWORD PTR __imp____std_terminate
	ret	0
__ehhandler$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z:
	mov	eax, OFFSET __ehfuncinfo$??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
??0MVFilter@@IAE@ABVPClip@@PBDPAVIScriptEnvironment@@HH@Z ENDP ; MVFilter::MVFilter
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\mvfilter.cpp
;	COMDAT ?CheckSimilarity@MVFilter@@IAEXABVMVClip@@PBDPAVIScriptEnvironment@@@Z
_TEXT	SEGMENT
_vector$ = 8						; size = 4
_vectorName$ = 12					; size = 4
_env$ = 16						; size = 4
?CheckSimilarity@MVFilter@@IAEXABVMVClip@@PBDPAVIScriptEnvironment@@@Z PROC ; MVFilter::CheckSimilarity, COMDAT
; _this$ = ecx

; 66   : {

	push	ebx

; 67   :    if ( nWidth != vector.GetWidth() )

	mov	ebx, DWORD PTR _vector$[esp]
	push	ebp
	mov	ebp, DWORD PTR _vectorName$[esp+4]
	push	esi
	mov	esi, ecx
	push	edi
	mov	edi, DWORD PTR _env$[esp+12]
	mov	eax, DWORD PTR [esi+28]
	cmp	eax, DWORD PTR [ebx+152]
	je	SHORT $LN2@CheckSimil

; 68   :       env->ThrowError("Error in %s : %s's width is incorrect", name, vectorName); //v1.8

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CG@PCPGAPHG@Error?5in?5?$CFs?5?3?5?$CFs?8s?5width?5is?5inco@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN2@CheckSimil:

; 69   : //      env->ThrowError("Error in %s : %s's width is incorrect", name.c_str(), vectorName);
; 70   : 
; 71   :    if ( nHeight != vector.GetHeight() )

	mov	eax, DWORD PTR [esi+32]
	cmp	eax, DWORD PTR [ebx+156]
	je	SHORT $LN3@CheckSimil

; 72   :       env->ThrowError("Error in %s : %s's height is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CH@BGHCALNL@Error?5in?5?$CFs?5?3?5?$CFs?8s?5height?5is?5inc@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN3@CheckSimil:

; 73   : //      env->ThrowError("Error in %s : %s's height is incorrect", name.c_str(), vectorName);
; 74   : 
; 75   :    if ( nBlkSizeX != vector.GetBlkSizeX() || nBlkSizeY != vector.GetBlkSizeY())

	mov	eax, DWORD PTR [esi+12]
	cmp	eax, DWORD PTR [ebx+124]
	jne	SHORT $LN5@CheckSimil
	mov	eax, DWORD PTR [esi+16]
	cmp	eax, DWORD PTR [ebx+128]
	je	SHORT $LN4@CheckSimil
$LN5@CheckSimil:

; 76   :       env->ThrowError("Error in %s : %s's block size is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CL@LBDNONKB@Error?5in?5?$CFs?5?3?5?$CFs?8s?5block?5size?5is@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN4@CheckSimil:

; 77   : //      env->ThrowError("Error in %s : %s's block size is incorrect", name.c_str(), vectorName);
; 78   : 
; 79   :    if ( nPel != vector.GetPel() )

	mov	eax, DWORD PTR [esi+40]
	cmp	eax, DWORD PTR [ebx+132]
	je	SHORT $LN6@CheckSimil

; 80   :       env->ThrowError("Error in %s : %s's pel precision is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CO@ECNOAAJA@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pel?5precision@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN6@CheckSimil:

; 81   : //      env->ThrowError("Error in %s : %s's pel precision is incorrect", name.c_str(), vectorName);
; 82   : 
; 83   :    if ( nOverlapX != vector.GetOverlapX() ||  nOverlapY != vector.GetOverlapY())

	mov	eax, DWORD PTR [esi+44]
	cmp	eax, DWORD PTR [ebx+160]
	jne	SHORT $LN8@CheckSimil
	mov	eax, DWORD PTR [esi+48]
	cmp	eax, DWORD PTR [ebx+164]
	je	SHORT $LN7@CheckSimil
$LN8@CheckSimil:

; 84   :       env->ThrowError("Error in %s : %s's overlap size is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CN@LNFIKJCI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5overlap?5size?5@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN7@CheckSimil:

; 85   : //      env->ThrowError("Error in %s : %s's overlap size is incorrect", name.c_str(), vectorName);
; 86   : 
; 87   :    if ( yRatioUV != vector.GetYRatioUV() )

	mov	eax, DWORD PTR [esi+60]
	cmp	eax, DWORD PTR [ebx+180]
	je	SHORT $LN9@CheckSimil

; 88   :       env->ThrowError("Error in %s : %s's Y Ratio UV is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CL@MNGNLDOP@Error?5in?5?$CFs?5?3?5?$CFs?8s?5Y?5Ratio?5UV?5is@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN9@CheckSimil:

; 89   : //      env->ThrowError("Error in %s : %s's Y Ratio UV is incorrect", name.c_str(), vectorName);
; 90   :    if ( xRatioUV != vector.GetXRatioUV() )

	mov	eax, DWORD PTR [esi+56]
	cmp	eax, DWORD PTR [ebx+184]
	je	SHORT $LN10@CheckSimil

; 91   :        env->ThrowError("Error in %s : %s's X Ratio UV is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CL@EMEINGMI@Error?5in?5?$CFs?5?3?5?$CFs?8s?5X?5Ratio?5UV?5is@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN10@CheckSimil:

; 92   : 
; 93   :    if ( pixelsize != vector.GetPixelSize() )

	mov	eax, DWORD PTR [esi+72]
	cmp	eax, DWORD PTR [ebx+188]
	je	SHORT $LN11@CheckSimil

; 94   :        env->ThrowError("Error in %s : %s's pixel size (bit depth) is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0DH@OGMALFBH@Error?5in?5?$CFs?5?3?5?$CFs?8s?5pixel?5size?5?$CIb@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN11@CheckSimil:

; 95   : 
; 96   :    if ( bits_per_pixel != vector.GetBitsPerPixel() )

	mov	eax, DWORD PTR [esi+76]
	cmp	eax, DWORD PTR [ebx+192]
	je	SHORT $LN12@CheckSimil

; 97   :      env->ThrowError("Error in %s : %s's bit depth is incorrect", name, vectorName);

	mov	eax, DWORD PTR [edi]
	push	ebp
	push	DWORD PTR [esi+84]
	push	OFFSET ??_C@_0CK@DJNFDJIJ@Error?5in?5?$CFs?5?3?5?$CFs?8s?5bit?5depth?5is?5@
	push	edi
	call	DWORD PTR [eax+20]
	add	esp, 16					; 00000010H
$LN12@CheckSimil:

; 98   : 
; 99   : }

	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
	ret	12					; 0000000cH
?CheckSimilarity@MVFilter@@IAEXABVMVClip@@PBDPAVIScriptEnvironment@@@Z ENDP ; MVFilter::CheckSimilarity
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\mvclip.h
;	COMDAT ?GetHPadding@MVClip@@QBEHXZ
_TEXT	SEGMENT
?GetHPadding@MVClip@@QBEHXZ PROC			; MVClip::GetHPadding, COMDAT
; _this$ = ecx

; 81   :    inline int GetHPadding() const { return nHPadding; }

	mov	eax, DWORD PTR [ecx+208]
	ret	0
?GetHPadding@MVClip@@QBEHXZ ENDP			; MVClip::GetHPadding
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\mvclip.h
;	COMDAT ?GetVPadding@MVClip@@QBEHXZ
_TEXT	SEGMENT
?GetVPadding@MVClip@@QBEHXZ PROC			; MVClip::GetVPadding, COMDAT
; _this$ = ecx

; 82   :    inline int GetVPadding() const { return nVPadding; }

	mov	eax, DWORD PTR [ecx+212]
	ret	0
?GetVPadding@MVClip@@QBEHXZ ENDP			; MVClip::GetVPadding
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\commonfunctions.h
;	COMDAT ?ilog2@@YAHH@Z
_TEXT	SEGMENT
?ilog2@@YAHH@Z PROC					; ilog2, COMDAT
; _i$ = ecx

; 24   : {

	mov	eax, ecx

; 25   : 	int result = 0;

	xor	ecx, ecx

; 26   : 	while ( i > 1 ) { i /= 2; result++; }

	cmp	eax, 1
	jle	SHORT $LN9@ilog2
	npad	7
$LL2@ilog2:
	cdq
	inc	ecx
	sub	eax, edx
	sar	eax, 1
	cmp	eax, 1
	jg	SHORT $LL2@ilog2
$LN9@ilog2:

; 27   : 	return result;

	mov	eax, ecx

; 28   : }

	ret	0
?ilog2@@YAHH@Z ENDP					; ilog2
_TEXT	ENDS
END
