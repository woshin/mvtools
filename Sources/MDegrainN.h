#ifndef __MV_DEGRAINN__
#define __MV_DEGRAINN__



#include	"conc/AtomicInt.h"
#include "MTSlicer.h"
#include "MVClip.h"
#include "MVFilter.h"
#include	"MVGroupOfFrames.h"
#include "overlap.h"
#include "SharedPtr.h"
#include "yuy2planes.h"

#include	<memory>
#include	<vector>



class MVPlane;

class MDegrainN
:	public GenericVideoFilter
,	public MVFilter
{

public:

	enum {			MAX_TEMP_RAD	= 128	};

						MDegrainN (
							::PClip child, ::PClip super, ::PClip mvmulti, int trad,
							int thsad, int thsadc, int yuvplanes, int nlimit, int nlimitc,
							int nscd1, int nscd2, bool isse_flag, bool planar_flag, bool lsb_flag,
							int thsad2, int thsadc2, bool mt_flag, ::IScriptEnvironment* env_ptr
						);
						~MDegrainN ();

	::PVideoFrame __stdcall
						GetFrame (int n, ::IScriptEnvironment* env_ptr);


protected:

private:

	typedef void (DenoiseNFunction) (
		BYTE *pDst, BYTE *pDstLsb, bool lsb_flag, int nDstPitch,
		const BYTE *pSrc, int nSrcPitch,
		// 2*k = ref backwards, 2*k+1 = ref forwards
		const BYTE *pRef [], int Pitch [],
		// 0 = src, 2*k+1 = ref backwards, 2*k+2 = ref forwards
		int Wall [], int trad
	);

	class MvClipInfo
	{
	public:
		SharedPtr <MVClip>
							_clip_sptr;
		SharedPtr <MVGroupOfFrames>
							_gof_sptr;
		int				_thsad;
		int				_thsadc;
	};
	typedef	std::vector <MvClipInfo>	MvClipArray;

	typedef	MTSlicer <MDegrainN>	Slicer;

	class TmpBlock
	{
	public:
		enum {         MAX_SIZE = 32                  };
		enum {         AREA     = MAX_SIZE * MAX_SIZE };
		               TmpBlock () : _lsb_ptr (&_d [AREA]) {}
		unsigned char  _d [MAX_SIZE * MAX_SIZE * 2];	// * 2 for MSB and LSB parts
		unsigned char* _lsb_ptr;	// Not allocated, it's just a reference to a part of the _d area
	};

	inline int		reorder_ref (int index) const;
	template <int P>
	inline void		process_chroma (int plane_mask);

	void				process_luma_normal_slice (Slicer::TaskData &td);
	void				process_luma_overlap_slice (Slicer::TaskData &td);
	void				process_luma_overlap_slice (int y_beg, int y_end);

	template <int P>
	void				process_chroma_normal_slice (Slicer::TaskData &td);
	template <int P>
	void				process_chroma_overlap_slice (Slicer::TaskData &td);
	template <int P>
	void				process_chroma_overlap_slice (int y_beg, int y_end);

	__forceinline void
						use_block_y (
							const BYTE * &p, int &np, int &wref, bool usable_flag, const MvClipInfo &c_info,
							int i, const MVPlane *plane_ptr, const BYTE *src_ptr, int xx, int src_pitch
						);
	__forceinline void
						use_block_uv (
							const BYTE * &p, int &np, int &wref, bool usable_flag, const MvClipInfo &c_info,
							int i, const MVPlane *plane_ptr, const BYTE *src_ptr, int xx, int src_pitch
						);

	static inline void
						norm_weights (int wref_arr [], int trad);

	MvClipArray		_mv_clip_arr;

	int				_trad;	// Temporal radius (nbr frames == _trad * 2 + 1)
	int				_yuvplanes;
	int				_nlimit;
	int				_nlimitc;
	PClip				_super;
	const bool		_isse_flag;
	const bool		_planar_flag;
	const bool		_lsb_flag;
	const bool		_mt_flag;
	int				_height_lsb_mul;

	const int		_yratiouv_log;
	int				_nsupermodeyuv;

	std::auto_ptr <YUY2Planes>
						_dst_planes;
	std::auto_ptr <YUY2Planes>
						_src_planes;

	std::auto_ptr <OverlapWindows>
						_overwins;
	std::auto_ptr <OverlapWindows>
						_overwins_uv;

	OverlapsFunction *
						_oversluma_ptr;
	OverlapsFunction *
						_overschroma_ptr;
	OverlapsLsbFunction *
						_oversluma_lsb_ptr;
	OverlapsLsbFunction *
						_overschroma_lsb_ptr;
	DenoiseNFunction *
						_degrainluma_ptr;
	DenoiseNFunction *
						_degrainchroma_ptr;

	// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
	// Processing variables

	std::vector <unsigned short>
						_dst_short;
	int				_dst_short_pitch;
	std::vector <int>
						_dst_int;
	int				_dst_int_pitch;

	bool				_usable_flag_arr [MAX_TEMP_RAD * 2];
	MVPlane *		_planes_ptr [MAX_TEMP_RAD * 2] [3];
	BYTE *			_dst_ptr_arr [3];
	const BYTE *	_src_ptr_arr [3];
	int				_dst_pitch_arr [3];
	int				_src_pitch_arr [3];
	int				_lsb_offset_arr [3];
	int				_covered_width;
	int				_covered_height;

	// This array has an nBlkY size. It is used in vertical overlap mode
	// to avoid read/write sync problems when processing is multithreaded.
	// Only elements corresponding to the first row of each sub-plane are
	// actually used. They count how many sub-planes (excepted their last
	// row) have been processed on each side of the boundary. When a counter
	// reaches 2, the boundary row (just above the element position) can be
	// processed safely.
	std::vector <conc::AtomicInt <int> >
						_boundary_cnt_arr;
};


#endif
