/*
 * Definitions used in assembly-language programs.
 */

#include "../h/config.h"

#ifdef VAX
#define STDSV		0x0e00
#define Mask		.word
#define F_NQUAL		0x80000000
#define F_VAR		0x40000000
#define F_TVAR		0x20000000
#define F_PTR		0x10000000
#define TYPEMASK	63
#define MAXSTRING	257
#define T_INTEGER	1
#define T_LONGINT	1
#define T_REAL		3
#define T_CSET		4
#define T_FILE		5
#define T_PROC		6
#define T_LIST		7
#define T_TABLE		8
#define T_RECORD	9
#define T_TELEM		10
#define T_LELEM		11
#define T_TVSUBS	12
#define T_TVTBL		14
#define T_TVPOS		15
#define T_TVRAND	16
#define T_TVTRACE	17
#define T_ESTACK	18
#define T_EBLOCK	19
#ifdef SETS
#define T_SET		20
#define T_SELEM		21
#endif SETS
	
#define Global(x)	.globl x
#define DummyFcn(x)	.globl x; x: halt
#define DummyData(x)	.globl x; x: .long 0
#define DummyRef(x)	.long x
#define gfp		r10
#define efp		r11
#define ipc		r9
#endif VAX

#ifdef PORT
#define F_NQUAL
#define F_VAR
#define F_TVAR
#define F_PTR

#define TYPEMASK
#define MAXSTRING

#define T_INTEGER
#define T_LONGINT
#define T_REAL
#define T_CSET
#define T_FILE
#define T_PROC
#define T_LIST
#define T_TABLE
#define T_RECORD
#define T_TELEM
#define T_LELEM
#define T_TVSUBS
#define T_TVTBL
#define T_TVPOS
#define T_TVRAND
#define T_TVTRACE
#define T_ESTACK
#define T_EBLOCK
#ifdef SETS
#define T_SET
#define T_SELEM
#endif SETS

#define gfp
#define efp
#define ipc
#define Global(x)
#define DummyFcn(x)
#define DummyData(x)
#define DummyRef(x)

#endif PORT

#ifdef PDP11
#define F_NQUAL		0100000
#define F_VAR		0040000
#define F_TVAR		0020000
#define F_PTR		0010000

#define TYPEMASK	63.
#define MAXSTRING	257.

#define T_INTEGER	1.
#define T_LONGINT	2.
#define T_REAL		3.
#define T_CSET		4.
#define T_FILE		5.
#define T_PROC		6.
#define T_LIST		7.
#define T_TABLE		8.
#define T_RECORD	9.
#define T_TELEM		10.
#define T_LELEM		11.
#define T_TVSUBS	12.
#define T_TVTBL		14.
#define T_TVPOS		15.
#define T_TVRAND	16.
#define T_TVTRACE	17.
#define T_ESTACK	18.
#define T_EBLOCK	19.
#ifdef SETS
#define T_SET		20.
#define T_SELEM		21.
#endif SETS

#define Global(x)	.globl x
#define DummyFcn(x)	.globl x; x: 0
#define DummyData(x)	.globl x; x: 0
#define DummyRef(x)	.globl x; x
#endif PDP11

#define OFFSETMASK	(~(F_NQUAL|F_VAR|F_TVAR))

#define D_VAR		F_VAR|F_NQUAL
#define D_TVAR		F_VAR|F_TVAR|F_NQUAL
#define D_NULL		0
#define D_INTEGER	T_INTEGER|F_NQUAL
#define D_LONGINT	T_LONGINT|F_PTR|F_NQUAL
#define D_REAL		T_REAL|F_PTR|F_NQUAL
#define D_CSET		T_CSET|F_PTR|F_NQUAL
#define D_FILE		T_FILE|F_PTR|F_NQUAL
#define D_PROC		T_PROC|F_PTR|F_NQUAL
#define D_LIST		T_LIST|F_PTR|F_NQUAL
#define D_TABLE		T_TABLE|F_PTR|F_NQUAL
#define D_RECORD	T_RECORD|F_PTR|F_NQUAL
#define D_TELEM		T_TELEM|F_PTR|F_NQUAL
#define D_LELEM		T_LELEM|F_PTR|F_NQUAL
#define D_TVSUBS	T_TVSUBS|D_TVAR
#define D_TVTBL		T_TVTBL|D_TVAR
#define D_TVPOS		T_TVPOS|D_TVAR
#define D_TVRAND	T_TVRAND|D_TVAR
#define D_TVTRACE	T_TVTRACE|D_TVAR
#define D_ESTACK	T_ESTACK|F_PTR|F_NQUAL
#define D_EBLOCK	T_EBLOCK|F_PTR|F_NQUAL
#ifdef SETS
#define D_SET		T_SET|F_PTR|F_NQUAL
#define D_SELEM		T_SELEM|F_PTR|F_NQUAL
#endif SETS
