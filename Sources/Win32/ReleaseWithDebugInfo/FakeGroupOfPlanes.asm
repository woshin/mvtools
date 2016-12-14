; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.24215.1 

	TITLE	c:\github\mvtools\sources\fakegroupofplanes.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

EXTRN	??_U@YAPAXI@Z:PROC				; operator new[]
EXTRN	??_V@YAXPAX@Z:PROC				; operator delete[]
PUBLIC	?IsSceneChange@FakeGroupOfPlanes@@QBE_NHH@Z	; FakeGroupOfPlanes::IsSceneChange
PUBLIC	?Update@FakeGroupOfPlanes@@QAE_NPBHH@Z		; FakeGroupOfPlanes::Update
PUBLIC	??_GFakePlaneOfBlocks@@QAEPAXI@Z		; FakePlaneOfBlocks::`scalar deleting destructor'
PUBLIC	??1FakeGroupOfPlanes@@QAE@XZ			; FakeGroupOfPlanes::~FakeGroupOfPlanes
PUBLIC	??0FakeGroupOfPlanes@@QAE@XZ			; FakeGroupOfPlanes::FakeGroupOfPlanes
PUBLIC	?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z	; FakeGroupOfPlanes::Create
PUBLIC	?GetValidity@FakeGroupOfPlanes@@CA_NPBH@Z	; FakeGroupOfPlanes::GetValidity
;	COMDAT xdata$x
xdata$x	SEGMENT
__ehfuncinfo$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
__unwindtable$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z$0
	DD	0ffffffffH
	DD	FLAT:__unwindfunclet$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z$1
xdata$x	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
__ehfuncinfo$??1FakeGroupOfPlanes@@QAE@XZ DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$??1FakeGroupOfPlanes@@QAE@XZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	05H
__unwindtable$??1FakeGroupOfPlanes@@QAE@XZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??1FakeGroupOfPlanes@@QAE@XZ$2
xdata$x	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
__ehfuncinfo$??_GFakePlaneOfBlocks@@QAEPAXI@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$??_GFakePlaneOfBlocks@@QAEPAXI@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	05H
__unwindtable$??_GFakePlaneOfBlocks@@QAEPAXI@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??_GFakePlaneOfBlocks@@QAEPAXI@Z$1
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\fakegroupofplanes.h
;	COMDAT ?GetValidity@FakeGroupOfPlanes@@CA_NPBH@Z
_TEXT	SEGMENT
?GetValidity@FakeGroupOfPlanes@@CA_NPBH@Z PROC		; FakeGroupOfPlanes::GetValidity, COMDAT
; _array$ = ecx

; 46   : 	__forceinline static bool GetValidity(const int *array) { return (array[1] == 1); }

	cmp	DWORD PTR [ecx+4], 1
	sete	al
	ret	0
?GetValidity@FakeGroupOfPlanes@@CA_NPBH@Z ENDP		; FakeGroupOfPlanes::GetValidity
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
;	COMDAT ?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z
_TEXT	SEGMENT
tv258 = -20						; size = 4
_this$1$ = -16						; size = 4
__$EHRec$ = -12						; size = 12
_nBlkSizeX$ = 8						; size = 4
_nBlkSizeY$ = 12					; size = 4
_nLevelCount$ = 16					; size = 4
_nPel$ = 20						; size = 4
_nOverlapX$ = 24					; size = 4
_nOverlapY$ = 28					; size = 4
__xRatioUV$ = 32					; size = 4
__yRatioUV$ = 36					; size = 4
tv256 = 40						; size = 4
__nBlkX$ = 40						; size = 4
$T2 = 44						; size = 4
$T3 = 44						; size = 4
__nBlkY$ = 44						; size = 4
?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z PROC	; FakeGroupOfPlanes::Create, COMDAT
; _this$ = ecx

; 27   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	mov	DWORD PTR fs:0, esp
	sub	esp, 8

; 28   :    nLvCount_ = nLevelCount;
; 29   : //   nOverlap = 2;//_nOverlap;
; 30   :    int nBlkX1 = _nBlkX;//(nWidth - nOverlapX) / (nBlkSizeX - nOverlapX);
; 31   : //   if ((nWidth - nOverlap) > (nBlkSize - nOverlap)*nBlkX )
; 32   : //	   nBlkX1++;
; 33   :    int nBlkY1 = _nBlkY;//(nHeight - nOverlapY)/ (nBlkSizeY - nOverlapY);
; 34   : //   if ((nHeight - nOverlap) > (nBlkSize - nOverlap)*nBlkY )
; 35   : //	   nBlkY1++;
; 36   :    nWidth_B = (nBlkSizeX - nOverlapX)*nBlkX1 + nOverlapX;

	mov	eax, DWORD PTR _nBlkSizeX$[ebp]
	sub	eax, DWORD PTR _nOverlapX$[ebp]
	mov	DWORD PTR tv258[ebp], eax
	push	ebx
	mov	edx, DWORD PTR _nLevelCount$[ebp]
	mov	ebx, ecx
	push	esi

; 37   :    nHeight_B = (nBlkSizeY - nOverlapY)*nBlkY1 + nOverlapY;

	mov	esi, DWORD PTR __nBlkY$[ebp]

; 38   :    xRatioUV_B = _xRatioUV; // used.
; 39   :    yRatioUV_B = _yRatioUV; // PF nowhere used
; 40   : 
; 41   : //   nWidth_ = nWidth;
; 42   : //   nHeight_ = nHeight;
; 43   : 
; 44   :    planes = new FakePlaneOfBlocks*[nLevelCount];

	xor	ecx, ecx
	push	edi
	mov	edi, DWORD PTR __nBlkX$[ebp]
	imul	eax, edi
	mov	DWORD PTR [ebx], edx
	mov	DWORD PTR _this$1$[ebp], ebx
	add	eax, DWORD PTR _nOverlapX$[ebp]
	mov	DWORD PTR [ebx+8], eax
	mov	eax, DWORD PTR _nBlkSizeY$[ebp]
	sub	eax, DWORD PTR _nOverlapY$[ebp]
	mov	DWORD PTR tv256[ebp], eax
	imul	eax, esi
	add	eax, DWORD PTR _nOverlapY$[ebp]
	mov	DWORD PTR [ebx+12], eax
	mov	eax, DWORD PTR __xRatioUV$[ebp]
	mov	DWORD PTR [ebx+16], eax
	mov	eax, DWORD PTR __yRatioUV$[ebp]
	mov	DWORD PTR [ebx+20], eax
	mov	eax, edx
	mov	edx, 4
	mul	edx
	seto	cl
	neg	ecx
	or	ecx, eax
	push	ecx
	call	??_U@YAPAXI@Z				; operator new[]

; 45   :    planes[0] = new FakePlaneOfBlocks(nBlkSizeX, nBlkSizeY, 0, nPel, nOverlapX, nOverlapY, nBlkX1, nBlkY1);

	push	56					; 00000038H
	mov	DWORD PTR [ebx+24], eax
	call	??2@YAPAXI@Z				; operator new
	add	esp, 8
	mov	DWORD PTR $T3[ebp], eax
	push	esi
	push	edi
	push	DWORD PTR _nOverlapY$[ebp]
	mov	edi, DWORD PTR _nOverlapX$[ebp]
	mov	ecx, eax
	push	edi
	push	DWORD PTR _nPel$[ebp]
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	push	0
	push	DWORD PTR _nBlkSizeY$[ebp]
	push	DWORD PTR _nBlkSizeX$[ebp]
	call	??0FakePlaneOfBlocks@@QAE@HHHHHHHH@Z	; FakePlaneOfBlocks::FakePlaneOfBlocks
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	mov	ecx, DWORD PTR [ebx+24]

; 46   : 	for (int i = 1; i < nLevelCount; i++ )

	mov	ebx, 1
	mov	DWORD PTR [ecx], eax
	cmp	DWORD PTR _nLevelCount$[ebp], ebx
	jle	SHORT $LN3@Create
	mov	esi, DWORD PTR _this$1$[ebp]
$LL4@Create:

; 47   : 	{
; 48   : 	    nBlkX1 = ((nWidth_B>>i) - nOverlapX)/(nBlkSizeX-nOverlapX);

	mov	eax, DWORD PTR [esi+8]
	mov	ecx, ebx
	sar	eax, cl
	sub	eax, edi
	cdq
	idiv	DWORD PTR tv258[ebp]

; 49   : 	    nBlkY1 = ((nHeight_B>>i) - nOverlapY)/(nBlkSizeY-nOverlapY);
; 50   : 		planes[i] = new FakePlaneOfBlocks(nBlkSizeX, nBlkSizeY, i, 1, nOverlapX, nOverlapY, nBlkX1, nBlkY1); // fixed bug with nOverlapX in v1.10.2

	push	56					; 00000038H
	mov	edi, eax
	mov	eax, DWORD PTR [esi+12]
	sar	eax, cl
	sub	eax, DWORD PTR _nOverlapY$[ebp]
	cdq
	idiv	DWORD PTR tv256[ebp]
	mov	esi, eax
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2[ebp], eax
	push	esi
	push	edi
	push	DWORD PTR _nOverlapY$[ebp]
	mov	edi, DWORD PTR _nOverlapX$[ebp]
	mov	ecx, eax
	push	edi
	push	1
	push	ebx
	push	DWORD PTR _nBlkSizeY$[ebp]
	mov	DWORD PTR __$EHRec$[ebp+8], 1
	push	DWORD PTR _nBlkSizeX$[ebp]
	call	??0FakePlaneOfBlocks@@QAE@HHHHHHHH@Z	; FakePlaneOfBlocks::FakePlaneOfBlocks
	mov	esi, DWORD PTR _this$1$[ebp]
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	mov	ecx, DWORD PTR [esi+24]
	mov	DWORD PTR [ecx+ebx*4], eax
	inc	ebx
	cmp	ebx, DWORD PTR _nLevelCount$[ebp]
	jl	SHORT $LL4@Create
$LN3@Create:

; 51   : 	}
; 52   : //   InitializeCriticalSection(&cs); P.F.16.03.08 caused 0xC0000005! moved to the constructor!
; 53   : }

	mov	ecx, DWORD PTR __$EHRec$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	DWORD PTR fs:0, ecx
	mov	esp, ebp
	pop	ebp
	ret	40					; 00000028H
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z$0:
	push	56					; 00000038H
	mov	eax, DWORD PTR $T3[ebp]
	push	eax
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
	ret	0
__unwindfunclet$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z$1:
	push	56					; 00000038H
	mov	eax, DWORD PTR $T2[ebp]
	push	eax
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
	ret	0
__ehhandler$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z:
	mov	eax, OFFSET __ehfuncinfo$?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?Create@FakeGroupOfPlanes@@QAEXHHHHHHHHHH@Z ENDP	; FakeGroupOfPlanes::Create
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
;	COMDAT ??0FakeGroupOfPlanes@@QAE@XZ
_TEXT	SEGMENT
??0FakeGroupOfPlanes@@QAE@XZ PROC			; FakeGroupOfPlanes::FakeGroupOfPlanes, COMDAT
; _this$ = ecx

; 56   : {

	push	esi
	mov	esi, ecx

; 57   : 	InitializeCriticalSection(&cs); // 16.03.08 moved here from ::Create

	lea	eax, DWORD PTR [esi+28]
	push	eax
	call	DWORD PTR __imp__InitializeCriticalSection@4

; 58   : 	planes = 0;

	mov	DWORD PTR [esi+24], 0

; 59   : }

	mov	eax, esi
	pop	esi
	ret	0
??0FakeGroupOfPlanes@@QAE@XZ ENDP			; FakeGroupOfPlanes::FakeGroupOfPlanes
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
;	COMDAT ??1FakeGroupOfPlanes@@QAE@XZ
_TEXT	SEGMENT
_this$1$ = -16						; size = 4
__$EHRec$ = -12						; size = 12
??1FakeGroupOfPlanes@@QAE@XZ PROC			; FakeGroupOfPlanes::~FakeGroupOfPlanes, COMDAT
; _this$ = ecx

; 62   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$??1FakeGroupOfPlanes@@QAE@XZ
	mov	eax, DWORD PTR fs:0
	push	eax
	mov	DWORD PTR fs:0, esp
	push	ecx
	push	edi
	mov	edi, ecx
	mov	DWORD PTR _this$1$[ebp], edi

; 63   :    if ( planes )

	cmp	DWORD PTR [edi+24], 0
	je	SHORT $LN5@FakeGroupO

; 65   :       for ( int i = 0; i < nLvCount_; i++ )

	push	esi
	xor	esi, esi
	cmp	DWORD PTR [edi], esi
	jle	SHORT $LN3@FakeGroupO
	push	ebx
	npad	3
$LL4@FakeGroupO:

; 66   : 		   delete planes[i];

	mov	eax, DWORD PTR [edi+24]
	mov	ebx, DWORD PTR [eax+esi*4]
	test	ebx, ebx
	je	SHORT $LN2@FakeGroupO
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp

; 59   : 	delete[] blocks;

	mov	eax, DWORD PTR [ebx+52]
	test	eax, eax
	je	SHORT $LN15@FakeGroupO
	push	OFFSET ??1FakeBlockData@@QAE@XZ		; FakeBlockData::~FakeBlockData
	lea	edi, DWORD PTR [eax-4]
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	push	DWORD PTR [edi]
	push	20					; 00000014H
	push	eax
	call	??_M@YGXPAXIIP6EX0@Z@Z
	mov	eax, DWORD PTR [edi]
	lea	eax, DWORD PTR [eax+eax*4]
	lea	eax, DWORD PTR [eax*4+4]
	push	eax
	push	edi
	call	??_V@YAXPAXI@Z				; operator delete[]
	mov	edi, DWORD PTR _this$1$[ebp]
	add	esp, 8
	mov	DWORD PTR __$EHRec$[ebp+8], -1
$LN15@FakeGroupO:
	push	56					; 00000038H
	push	ebx
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
$LN2@FakeGroupO:
; File c:\github\mvtools\sources\fakegroupofplanes.cpp

; 65   :       for ( int i = 0; i < nLvCount_; i++ )

	inc	esi
	cmp	esi, DWORD PTR [edi]
	jl	SHORT $LL4@FakeGroupO
	pop	ebx
$LN3@FakeGroupO:

; 67   : 	   delete[] planes;

	push	DWORD PTR [edi+24]
	call	??_V@YAXPAX@Z				; operator delete[]
	add	esp, 4

; 68   : 	   planes = 0; //v1.2.1

	mov	DWORD PTR [edi+24], 0
	pop	esi
$LN5@FakeGroupO:

; 69   :    }
; 70   :    DeleteCriticalSection(&cs); 

	lea	eax, DWORD PTR [edi+28]
	push	eax
	call	DWORD PTR __imp__DeleteCriticalSection@4

; 71   : }

	mov	ecx, DWORD PTR __$EHRec$[ebp]
	pop	edi
	mov	DWORD PTR fs:0, ecx
	mov	esp, ebp
	pop	ebp
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??1FakeGroupOfPlanes@@QAE@XZ$2:
	call	DWORD PTR __imp____std_terminate
	ret	0
__ehhandler$??1FakeGroupOfPlanes@@QAE@XZ:
	mov	eax, OFFSET __ehfuncinfo$??1FakeGroupOfPlanes@@QAE@XZ
	jmp	___CxxFrameHandler3
text$x	ENDS
??1FakeGroupOfPlanes@@QAE@XZ ENDP			; FakeGroupOfPlanes::~FakeGroupOfPlanes
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp
;	COMDAT ??_GFakePlaneOfBlocks@@QAEPAXI@Z
_TEXT	SEGMENT
__$EHRec$ = -12						; size = 12
___flags$dead$ = 8					; size = 4
??_GFakePlaneOfBlocks@@QAEPAXI@Z PROC			; FakePlaneOfBlocks::`scalar deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR fs:0
	push	-1
	push	__ehhandler$??_GFakePlaneOfBlocks@@QAEPAXI@Z
	push	eax
	mov	DWORD PTR fs:0, esp
	push	esi
	push	edi
	mov	edi, ecx

; 59   : 	delete[] blocks;

	mov	eax, DWORD PTR [edi+52]
	test	eax, eax
	je	SHORT $LN12@scalar
	push	OFFSET ??1FakeBlockData@@QAE@XZ		; FakeBlockData::~FakeBlockData
	lea	esi, DWORD PTR [eax-4]
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	push	DWORD PTR [esi]
	push	20					; 00000014H
	push	eax
	call	??_M@YGXPAXIIP6EX0@Z@Z
	mov	eax, DWORD PTR [esi]
	lea	eax, DWORD PTR [eax+eax*4]
	lea	eax, DWORD PTR [eax*4+4]
	push	eax
	push	esi
	call	??_V@YAXPAXI@Z				; operator delete[]
	add	esp, 8
$LN12@scalar:
	push	56					; 00000038H
	push	edi
	call	??3@YAXPAXI@Z				; operator delete
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	add	esp, 8
	mov	eax, edi
	mov	DWORD PTR fs:0, ecx
	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??_GFakePlaneOfBlocks@@QAEPAXI@Z$1:
	call	DWORD PTR __imp____std_terminate
	ret	0
__ehhandler$??_GFakePlaneOfBlocks@@QAEPAXI@Z:
	mov	eax, OFFSET __ehfuncinfo$??_GFakePlaneOfBlocks@@QAEPAXI@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
??_GFakePlaneOfBlocks@@QAEPAXI@Z ENDP			; FakePlaneOfBlocks::`scalar deleting destructor'
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
; File c:\github\mvtools\sources\fakegroupofplanes.h
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
; File c:\github\mvtools\sources\fakegroupofplanes.h
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
; File c:\github\mvtools\sources\fakegroupofplanes.h
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp
; File c:\github\mvtools\sources\fakeblockdata.cpp
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp
; File c:\github\mvtools\sources\fakeblockdata.cpp
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
;	COMDAT ?Update@FakeGroupOfPlanes@@QAE_NPBHH@Z
_TEXT	SEGMENT
_i$1$ = -12						; size = 4
_this$1$ = -8						; size = 4
tv318 = -4						; size = 4
_ok_flag$1$ = 8						; size = 1
_array$ = 8						; size = 4
_data_size$ = 12					; size = 4
?Update@FakeGroupOfPlanes@@QAE_NPBHH@Z PROC		; FakeGroupOfPlanes::Update, COMDAT
; _this$ = ecx

; 76   : {

	sub	esp, 12					; 0000000cH
	push	ebx
	push	ebp
	push	esi
	mov	esi, ecx
	push	edi
	mov	DWORD PTR _this$1$[esp+28], esi

; 77   : 	::EnterCriticalSection (&cs);

	lea	eax, DWORD PTR [esi+28]
	push	eax
	mov	DWORD PTR tv318[esp+32], eax
	call	DWORD PTR __imp__EnterCriticalSection@4
; File c:\github\mvtools\sources\fakegroupofplanes.h

; 46   : 	__forceinline static bool GetValidity(const int *array) { return (array[1] == 1); }

	mov	edi, DWORD PTR _array$[esp+24]
; File c:\github\mvtools\sources\fakegroupofplanes.cpp

; 90   : 	for ( int i = nLvCount_ - 1; i >= 0 && ok_flag; i-- )

	mov	edx, DWORD PTR [esi]
; File c:\github\mvtools\sources\fakegroupofplanes.h

; 46   : 	__forceinline static bool GetValidity(const int *array) { return (array[1] == 1); }

	cmp	DWORD PTR [edi+4], 1
; File c:\github\mvtools\sources\fakegroupofplanes.cpp

; 87   :    pA += 2;

	lea	ebp, DWORD PTR [edi+8]
	mov	ecx, ebp
; File c:\github\mvtools\sources\fakegroupofplanes.h

; 46   : 	__forceinline static bool GetValidity(const int *array) { return (array[1] == 1); }

	sete	al
; File c:\github\mvtools\sources\fakegroupofplanes.cpp

; 88   : 	ok_flag = (pA - array <= data_size);

	cmp	DWORD PTR _data_size$[esp+24], 2
	mov	BYTE PTR [esi+4], al
	setge	bl

; 90   : 	for ( int i = nLvCount_ - 1; i >= 0 && ok_flag; i-- )

	sub	edx, 1
	mov	BYTE PTR _ok_flag$1$[esp+24], bl
	mov	esi, edx
	mov	DWORD PTR _i$1$[esp+28], edx
	js	SHORT $LN3@Update
$LL4@Update:
	test	bl, bl
	je	SHORT $LN6@Update

; 91   : 	{
; 92   : 		pA += pA[0];

	mov	eax, DWORD PTR [ecx]
	lea	ecx, DWORD PTR [ecx+eax*4]

; 93   : 		ok_flag = (pA - array <= data_size);

	mov	eax, ecx
	sub	eax, edi
	sar	eax, 2
	cmp	eax, DWORD PTR _data_size$[esp+24]
	setle	bl
	sub	esi, 1
	mov	BYTE PTR _ok_flag$1$[esp+24], bl
	jns	SHORT $LL4@Update
$LN3@Update:

; 94   : 	}
; 95   : 
; 96   : //   compensatedPlane = reinterpret_cast<const unsigned char *>(pA);
; 97   : //   compensatedPlaneU = compensatedPlane + nWidth_B * nHeight_B;
; 98   : //   compensatedPlaneV = compensatedPlaneU + nWidth_B * nHeight_B /(2*yRatioUV_B);
; 99   : 
; 100  : 	// Actually collects the data
; 101  : 	if (ok_flag)

	test	bl, bl
	je	SHORT $LN6@Update

; 102  : 	{
; 103  : 		pA = array;
; 104  : 		pA += 2;
; 105  : 		for ( int i = nLvCount_ - 1; i >= 0; i-- )

	test	edx, edx
	js	SHORT $LN6@Update
	npad	1
$LL7@Update:

; 107  : 			planes[i]->Update(pA + 1);

	mov	ecx, DWORD PTR _this$1$[esp+28]
	lea	eax, DWORD PTR [ebp+4]
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp

; 65   : 	for ( int i = 0; i < nBlkCount; i++ )

	xor	edi, edi
; File c:\github\mvtools\sources\fakegroupofplanes.cpp

; 107  : 			planes[i]->Update(pA + 1);

	mov	ecx, DWORD PTR [ecx+24]
	mov	ebx, DWORD PTR [ecx+edx*4]
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp

; 65   : 	for ( int i = 0; i < nBlkCount; i++ )

	cmp	DWORD PTR [ebx+24], edi
	jle	SHORT $LN14@Update
; File c:\github\mvtools\sources\fakegroupofplanes.cpp

; 107  : 			planes[i]->Update(pA + 1);

	xor	esi, esi
$LL15@Update:
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp

; 67   : 		blocks[i].Update(array);

	mov	edx, DWORD PTR [ebx+52]

; 68   : 		array += N_PER_BLOCK;

	lea	eax, DWORD PTR [eax+12]
; File c:\github\mvtools\sources\fakeblockdata.cpp

; 48   : 	vector.x   = array [0];

	mov	ecx, DWORD PTR [eax-12]
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp

; 65   : 	for ( int i = 0; i < nBlkCount; i++ )

	lea	esi, DWORD PTR [esi+20]
	inc	edi
; File c:\github\mvtools\sources\fakeblockdata.cpp

; 48   : 	vector.x   = array [0];

	mov	DWORD PTR [edx+esi-12], ecx

; 49   : 	vector.y   = array [1];

	mov	ecx, DWORD PTR [eax-8]
	mov	DWORD PTR [edx+esi-8], ecx

; 50   : 	vector.sad = *(sad_t *)(&array [2]);

	mov	ecx, DWORD PTR [eax-4]
	mov	DWORD PTR [edx+esi-4], ecx
; File c:\github\mvtools\sources\fakeplaneofblocks.cpp

; 65   : 	for ( int i = 0; i < nBlkCount; i++ )

	cmp	edi, DWORD PTR [ebx+24]
	jl	SHORT $LL15@Update
	mov	edx, DWORD PTR _i$1$[esp+28]
$LN14@Update:
; File c:\github\mvtools\sources\fakegroupofplanes.cpp

; 108  : 			pA += pA[0];

	mov	ecx, DWORD PTR [ebp]
	sub	edx, 1
	mov	DWORD PTR _i$1$[esp+28], edx
	lea	ebp, DWORD PTR [ebp+ecx*4]
	jns	SHORT $LL7@Update
	mov	bl, BYTE PTR _ok_flag$1$[esp+24]
$LN6@Update:

; 109  : 		}
; 110  : 	}
; 111  : 
; 112  : 	::LeaveCriticalSection (&cs);

	push	DWORD PTR tv318[esp+28]
	call	DWORD PTR __imp__LeaveCriticalSection@4
	pop	edi
	pop	esi
	pop	ebp

; 113  : 
; 114  : 	return (ok_flag);

	mov	al, bl
	pop	ebx

; 115  : }

	add	esp, 12					; 0000000cH
	ret	8
?Update@FakeGroupOfPlanes@@QAE_NPBHH@Z ENDP		; FakeGroupOfPlanes::Update
_TEXT	ENDS
; Function compile flags: /Ogtpy
; File c:\github\mvtools\sources\fakegroupofplanes.cpp
;	COMDAT ?IsSceneChange@FakeGroupOfPlanes@@QBE_NHH@Z
_TEXT	SEGMENT
_nThSCD1$ = 8						; size = 4
_nThSCD2$ = 12						; size = 4
?IsSceneChange@FakeGroupOfPlanes@@QBE_NHH@Z PROC	; FakeGroupOfPlanes::IsSceneChange, COMDAT
; _this$ = ecx

; 119  : 	return planes[0]->IsSceneChange(nThSCD1, nThSCD2);

	mov	ecx, DWORD PTR [ecx+24]
	mov	ecx, DWORD PTR [ecx]
	jmp	?IsSceneChange@FakePlaneOfBlocks@@QBE_NHH@Z ; FakePlaneOfBlocks::IsSceneChange
?IsSceneChange@FakeGroupOfPlanes@@QBE_NHH@Z ENDP	; FakeGroupOfPlanes::IsSceneChange
_TEXT	ENDS
END
