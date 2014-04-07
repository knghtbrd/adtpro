;
; ADTPro - Apple Disk Transfer ProDOS
; Copyright (C) 2008 - 2014 by David Schmidt
; david__schmidt at users.sourceforge.net
;
; This program is free software; you can redistribute it and/or modify it 
; under the terms of the GNU General Public License as published by the 
; Free Software Foundation; either version 2 of the License, or (at your 
; option) any later version.
;
; This program is distributed in the hope that it will be useful, but 
; WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY 
; or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License 
; for more details.
;
; You should have received a copy of the GNU General Public License along 
; with this program; if not, write to the Free Software Foundation, Inc., 
; 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
;

;---------------------------------------------------------
; Host messages
;---------------------------------------------------------

HMSGTBL:
	.addr HMGBG,HMFIL,HMFMT,HMDIR,HMTIMEOUT

HMGBG:	asc "GARBAGE RECEIVED FROM HOST"
	.byte CHR_RETURN
HMGBG_END =*

HMFIL:	asc "UNABLE TO OPEN FILE"
	.byte CHR_RETURN
HMFIL_END =*

HMFMT:	asc "FILE FORMAT NOT RECOGNIZED"
	.byte CHR_RETURN
HMFMT_END =*

HMDIR:	asc "UNABLE TO CHANGE DIRECTORY"
	.byte CHR_RETURN
HMDIR_END =*

HMTIMEOUT:
	asc "HOST TIMEOUT"
	.byte CHR_RETURN
HMTIMEOUT_END =*

;---------------------------------------------------------
; Host message lengths
;---------------------------------------------------------
HMSGLENTBL:
	.byte HMGBG_END-HMGBG
	.byte HMFIL_END-HMFIL
	.byte HMFMT_END-HMFMT
	.byte HMDIR_END-HMDIR
	.byte HMTIMEOUT_END-HMTIMEOUT

;---------------------------------------------------------
; Host message equates
;---------------------------------------------------------

PHMGBG	= $00
PHMFIL	= $02
PHMFMT	= $04
PHMDIR	= $06
PHMTIMEOUT	= $08
PHMMAX	= $0a		; This must be two greater than the largest host message

;---------------------------------------------------------
; Console messages
;---------------------------------------------------------
	MSG01:	asc "%ADTPRO_VERSION%"
	MSG01_END =*

	MSG02:	asc "(S)END (R)ECEIVE (D)IR (B)ATCH (C)D"
		.byte CHR_RETURN,CHR_RETURN
	MSG02_END =*

	MSG03:	asc "(V)OLUMES CONFI(G) (F)ORMAT (?) (Q)UIT:"
	MSG03_END =*

	MSG04:	asc "(S)TANDARD OR (N)IBBLE?"
	MSG04_END =*

	MSG05:	asc "RECEIVING"
	MSG05_END =*

	MSG06:	asc "  SENDING"
	MSG06_END =*

	MSG07:	asc "  READING"
	MSG07_END =*

	MSG08:	asc "  WRITING"
	MSG08_END =*

	MSG09:	asc "BLOCK 00000 OF"
	MSG09_END =*

	MSG13:	asc "FILENAME: "
	MSG13_END =*

	MSG14:	asc "COMPLETE"
	MSG14_END =*

	MSG15:	asc " - WITH ERRORS"
	MSG15_END =*

	MSG16:	asc "PRESS A KEY TO CONTINUE..."
	MSG16_END =*

	MSG17:	asc "ADTPRO BY DAVID SCHMIDT. BASED ON WORKS "
		asc "    BY PAUL GUERTIN AND MANY OTHERS.    "
		asc "  VISIT: HTTP://ADTPRO.SOURCEFORGE.NET "
	MSG17_END =*

	MSGSOU:	asc "   SELECT SOURCE VOLUME"
	MSGSOU_END =*

	MSGDST:	asc "SELECT DESTINATION VOLUME"
	MSGDST_END =*

	MSG19:	asc "VOLUMES CURRENTLY ON-LINE:"
	MSG19_END =*

	;MSG20 - defined locally
	;MSG21 - defined locally

	MSG22:	asc "CHANGE SELECTION WITH ARROW KEYS&RETURN "
	MSG22_END =*

	MSG23:	asc " (R) TO RE-SCAN DRIVES, ESC TO CANCEL"
	MSG23_END =*

	MSG23a:	asc "SELECT WITH RETURN, ESC CANCELS"
	MSG23a_END =*

	MSG24:	asc "CONFIGURE ADTPRO PARAMETERS"
	MSG24_END =*

	MSG25:	asc "CHANGE PARAMETERS WITH ARROW KEYS"
	MSG25_END =*

	;MSG26 - defined locally
	;MSG27 - defined locally

	MSG28: asc "ENABLE SOUND"
	MSG28_END =*

	MSG28a:	asc "SAVE CONFIG"
	MSG28a_END =*

	MSG29:	asc "ANY KEY TO CONTINUE, ESC TO STOP: "
	MSG29_END =*

	MSG30:	asc "END OF DIRECTORY.  HIT A KEY: "
	MSG30_END =*

	MNONAME:
		asc "<NO NAME>"
	MNONAME_END =*

	MIOERR:	asc "<I/O ERROR>"
	MIOERR_END =*

	MSG34:	asc "FILE EXISTS"
	MSG34_END =*

	MSG35:	asc "IMAGE/DRIVE SIZE MISMATCH!"
		.byte CHR_RETURN
	MSG35_END =*

	MLOGO1:	.byte NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,CHR_RETURN
	MLOGO1_END =*

	MLOGO2:	.byte NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,CHR_RETURN
	MLOGO2_END =*

	MLOGO3:	.byte INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,CHR_RETURN
	MLOGO3_END =*

	MLOGO4:	.byte INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,CHR_RETURN
	MLOGO4_END =*

	MLOGO5:	.byte INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,CHR_RETURN
	MLOGO5_END =*

	MLOGO6:	.byte INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L,NRM_BLOCK,INV_CHR_L,INV_CHR_L,INV_CHR_L,INV_CHR_L,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,NRM_BLOCK,INV_CHR_L,INV_CHR_L
		asc	" PRO"
		.byte	CHR_RETURN
	MLOGO6_END =*

	MWAIT:	asc "WAITING FOR HOST REPLY, ESC CANCELS"
	MWAIT_END =*

	MCDIR:	asc "DIRECTORY: "
	MCDIR_END =*

	MFORC:	asc "COPY IMAGE DATA ANYWAY? (Y/N):"
	MFORC_END =*

	MFEX:	asc "FILE ALREADY EXISTS AT HOST."
	MFEX_END =*

	MUTHBAD:
		asc "ETHERNET INIT FAILED; PLEASE RUN CONFIG."
	MUTHBAD_END =*

	MPREFIX:
		asc "FILENAME PREFIX: "
	MPREFIX_END =*

	MINSERTDISK:
		asc "INSERT THE NEXT DISK TO SEND."
	MINSERTDISK_END =*

	MFORMAT:
		asc " CHOOSE VOLUME TO FORMAT"
	MFORMAT_END =*

	MANALYSIS:
		asc "HOST UNABLE TO ANALYZE TRACK."
	MANALYSIS_END =*

	MNOCREATE:
		asc "UNABLE TO CREATE CONFIG FILE."
	MNOCREATE_END =*

	; Messages from formatter routine
	MVolName:
		asc "VOLUME NAME: /"
	MBlank:	asc "BLANK          "	; Note - these two are really one continuous message.
	MVolName_END =*

	MTheOld:
		asc "READY TO FORMAT? (Y/N):"
	MTheOld_END =*

	MUnRecog:
		asc "UNRECOGNIZED ERROR = "
	MUnRecog_END =*

	MDead:	asc "CHECK DISK OR DRIVE DOOR!"
	MDead_END =*

	MProtect:
		asc "DISK IS WRITE PROTECTED!"
	MProtect_END =*

	MNoDisk:
		asc "NO DISK IN THE DRIVE!"
	MNoDisk_END =*
	
	MNuther:
		asc "FORMAT ANOTHER? (Y/N):"
	MNuther_END =*
	
	MUnitNone:
		asc "NO UNIT IN THAT SLOT AND DRIVE"
	MUnitNone_END =*

	MNIBTOP:
		.byte CHR_RETURN
		.byte CHR_RETURN
		.byte CHR_RETURN
		inv "  00000000000000001111111111111111222  "
		.byte CHR_RETURN
		inv "  0123456789ABCDEF0123456789ABCDEF012  "
		.byte CHR_RETURN
	MNIBTOP_END =*

	MEnableNibbles:
		asc "ENABLE NIBBLES"
	MEnableNibbles_END =*

	MNULL:	.byte $00
	MNULL_END =*


;---------------------------------------------------------
; Message pointer table
;---------------------------------------------------------

MSGTBL:
	.addr MSG01,MSG02,MSG03,MSG04,MSG05,MSG06,MSG07,MSG08
	.addr MSG09,MSG13,MSG14,MSG15,MSG16
	.addr MSG17,MSGSOU,MSGDST,MSG19,MSG20,MSG21,MSG22,MSG23,MSG23a,MSG24
	.addr MSG25,MSG26,MSG27,MSG28,MSG28a,MSG29,MSG30,MNONAME,MIOERR
	.addr MSG34,MSG35
	.addr MLOGO1,MLOGO2,MLOGO3,MLOGO4,MLOGO5,MLOGO6,MWAIT,MCDIR,MFORC,MFEX
	.addr MUTHBAD, MPREFIX, MINSERTDISK, MFORMAT, MANALYSIS, MNOCREATE
	.addr MVolName, MTheOld, MUnRecog, MDead
	.addr MProtect, MNoDisk, MNuther, MUnitNone, MNIBTOP, MEnableNibbles
	.addr MNULL

;---------------------------------------------------------
; Message length table
;---------------------------------------------------------

MSGLENTBL:
	.byte MSG01_END-MSG01
	.byte MSG02_END-MSG02
	.byte MSG03_END-MSG03
	.byte MSG04_END-MSG04
	.byte MSG05_END-MSG05
	.byte MSG06_END-MSG06
	.byte MSG07_END-MSG07
	.byte MSG08_END-MSG08
	.byte MSG09_END-MSG09
	.byte MSG13_END-MSG13
	.byte MSG14_END-MSG14
	.byte MSG15_END-MSG15
	.byte MSG16_END-MSG16
	.byte MSG17_END-MSG17
	.byte MSGSOU_END-MSGSOU
	.byte MSGDST_END-MSGDST
	.byte MSG19_END-MSG19
	.byte MSG20_END-MSG20
	.byte MSG21_END-MSG21
	.byte MSG22_END-MSG22
	.byte MSG23_END-MSG23
	.byte MSG23a_END-MSG23a
	.byte MSG24_END-MSG24
	.byte MSG25_END-MSG25
	.byte MSG26_END-MSG26
	.byte MSG27_END-MSG27
	.byte MSG28_END-MSG28
	.byte MSG28a_END-MSG28a
	.byte MSG29_END-MSG29
	.byte MSG30_END-MSG30
	.byte MNONAME_END-MNONAME
	.byte MIOERR_END-MIOERR
	.byte MSG34_END-MSG34
	.byte MSG35_END-MSG35
	.byte MLOGO1_END-MLOGO1
	.byte MLOGO2_END-MLOGO2
	.byte MLOGO3_END-MLOGO3
	.byte MLOGO4_END-MLOGO4
	.byte MLOGO5_END-MLOGO5
	.byte MLOGO6_END-MLOGO6
	.byte MWAIT_END-MWAIT
	.byte MCDIR_END-MCDIR
	.byte MFORC_END-MFORC
	.byte MFEX_END-MFEX
	.byte MUTHBAD_END-MUTHBAD
	.byte MPREFIX_END-MPREFIX
	.byte MINSERTDISK_END-MINSERTDISK
	.byte MFORMAT_END-MFORMAT
	.byte MANALYSIS_END-MANALYSIS
	.byte MNOCREATE_END-MNOCREATE
	.byte MVolName_END-MVolName
	.byte MTheOld_END-MTheOld
	.byte MUnRecog_END-MUnRecog
	.byte MDead_END-MDead
	.byte MProtect_END-MProtect
	.byte MNoDisk_END-MNoDisk
	.byte MNuther_END-MNuther
	.byte MUnitNone_END-MUnitNone
	.byte MNIBTOP_END-MNIBTOP
	.byte MEnableNibbles_END-MEnableNibbles
	.byte $00	; MNULL - null message has no length.

;---------------------------------------------------------
; Message equates
;---------------------------------------------------------

PMSG01		= $00
PMSG02		= $02+PMSG01
PMSG03		= $02+PMSG02
PMSG04		= $02+PMSG03
PMSG05		= $02+PMSG04
PMSG06		= $02+PMSG05
PMSG07		= $02+PMSG06
PMSG08		= $02+PMSG07
PMSG09		= $02+PMSG08
PMSG13		= $02+PMSG09
PMSG14		= $02+PMSG13
PMSG15		= $02+PMSG14
PMSG16		= $02+PMSG15
PMSG17		= $02+PMSG16
PMSGSOU		= $02+PMSG17
PMSGDST		= $02+PMSGSOU
PMSG19		= $02+PMSGDST
PMSG20		= $02+PMSG19
PMSG21		= $02+PMSG20
PMSG22		= $02+PMSG21
PMSG23		= $02+PMSG22
PMSG23a		= $02+PMSG23
PMSG24		= $02+PMSG23a
PMSG25		= $02+PMSG24
PMSG26		= $02+PMSG25
PMSG27		= $02+PMSG26
PMSG28		= $02+PMSG27
PMSG28a		= $02+PMSG28
PMSG29		= $02+PMSG28a
PMSG30		= $02+PMSG29
PMNONAME	= $02+PMSG30
PMIOERR		= $02+PMNONAME
PMSG34		= $02+PMIOERR
PMSG35		= $02+PMSG34
PMLOGO1		= $02+PMSG35
PMLOGO2		= $02+PMLOGO1
PMLOGO3		= $02+PMLOGO2
PMLOGO4		= $02+PMLOGO3
PMLOGO5		= $02+PMLOGO4
PMLOGO6		= $02+PMLOGO5
PMWAIT		= $02+PMLOGO6
PMCDIR		= $02+PMWAIT
PMFORC		= $02+PMCDIR
PMFEX		= $02+PMFORC
PMUTHBAD	= $02+PMFEX
PMPREFIX	= $02+PMUTHBAD
PMINSERTDISK	= $02+PMPREFIX
PMFORMAT	= $02+PMINSERTDISK
PMANALYSIS	= $02+PMFORMAT
PMNOCREATE	= $02+PMANALYSIS
PMVolName	= $02+PMNOCREATE
PMTheOld	= $02+PMVolName
PMUnRecog	= $02+PMTheOld
PMDead		= $02+PMUnRecog
PMProtect	= $02+PMDead
PMNoDisk	= $02+PMProtect
PMNuther	= $02+PMNoDisk
PMUnitNone	= $02+PMNuther
PMNIBTOP	= $02+PMUnitNone
PMEnableNibbles	= $02+PMNIBTOP
PMNULL		= $02+PMEnableNibbles
