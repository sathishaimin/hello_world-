# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.2 (http://bakefile.sourceforge.net)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# C++ compiler 
CXX = wpp386

# Standard flags for C++ 
CXXFLAGS = 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS = 

# Standard linker flags 
LDFLAGS = 

# Use DLL build of wx library? [0,1]
#   0 - Static
#   1 - DLL
WX_SHARED = 0

# Use Unicode build of wxWidgets? [0,1]
#   0 - ANSI
#   1 - Unicode
WX_UNICODE = 0

# Use debug build of wxWidgets (define __WXDEBUG__)? [0,1]
#   0 - Release
#   1 - Debug
WX_DEBUG = 1

# Version of the wx library to build against. 
WX_VERSION = 28

# Use monolithic build of wxWidgets? [0,1]
#   0 - Multilib
#   1 - Monolithic
WX_MONOLITHIC = 0

# The directory where wxWidgets library is installed 
WX_DIR = $(%WXWIN)



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

# Speed up compilation a bit:
!ifdef __LOADDLL__
!  loaddll wcc      wccd
!  loaddll wccaxp   wccdaxp
!  loaddll wcc386   wccd386
!  loaddll wpp      wppdi86
!  loaddll wppaxp   wppdaxp
!  loaddll wpp386   wppd386
!  loaddll wlink    wlink
!  loaddll wlib     wlibd
!endif

# We need these variables in some bakefile-made rules:
WATCOM_CWD = $+ $(%cdrive):$(%cwd) $-

### Conditionally set variables: ###

WX3RDPARTYLIBPOSTFIX =
!ifeq WX_DEBUG 1
WX3RDPARTYLIBPOSTFIX = d
!endif
_BUILDDIR_SHARED_SUFFIX =
!ifeq WX_SHARED 0
_BUILDDIR_SHARED_SUFFIX = 
!endif
!ifeq WX_SHARED 1
_BUILDDIR_SHARED_SUFFIX = _dll
!endif
__things_lib___depname =
!ifeq WX_SHARED 0
__things_lib___depname = &
	..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib
!endif
__things_dll___depname =
!ifeq WX_SHARED 1
__things_dll___depname = &
	..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.dll
!endif
____things =
!ifeq WX_DEBUG 0
____things = -ot -ox
!endif
!ifeq WX_DEBUG 1
____things = -od
!endif
____things_2 =
!ifeq WX_DEBUG 0
____things_2 = -d0
!endif
!ifeq WX_DEBUG 1
____things_2 = -d2
!endif
____things_3 =
!ifeq WX_DEBUG 0
____things_3 = 
!endif
!ifeq WX_DEBUG 1
____things_3 = debug all
!endif
____things_5 =
!ifeq WX_SHARED 0
____things_5 = lib
!endif
!ifeq WX_SHARED 1
____things_5 = dll
!endif
__WXLIB_ADV_NAME_p =
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 0
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)_adv.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 1
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)u_adv.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 0
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)d_adv.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 1
__WXLIB_ADV_NAME_p = wxmsw$(WX_VERSION)ud_adv.lib
!endif
!endif
!endif
__WXLIB_CORE_NAME_p =
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 0
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)_core.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 1
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)u_core.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 0
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)d_core.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 1
__WXLIB_CORE_NAME_p = wxmsw$(WX_VERSION)ud_core.lib
!endif
!endif
!endif
__WXLIB_BASE_NAME_p =
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 0
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION).lib
!endif
!endif
!endif
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 1
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION)u.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 1
!ifeq WX_UNICODE 0
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION).lib
!endif
!endif
!endif
!ifeq WX_DEBUG 0
!ifeq WX_MONOLITHIC 1
!ifeq WX_UNICODE 1
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION)u.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 0
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION)d.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 0
!ifeq WX_UNICODE 1
__WXLIB_BASE_NAME_p = wxbase$(WX_VERSION)ud.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 1
!ifeq WX_UNICODE 0
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION)d.lib
!endif
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_MONOLITHIC 1
!ifeq WX_UNICODE 1
__WXLIB_BASE_NAME_p = wxmsw$(WX_VERSION)ud.lib
!endif
!endif
!endif
____WX_SHARED =
!ifeq WX_SHARED 0
____WX_SHARED = 
!endif
!ifeq WX_SHARED 1
____WX_SHARED = -dWXUSINGDLL
!endif
__WXUNICODE_DEFINE_p =
!ifeq WX_UNICODE 1
__WXUNICODE_DEFINE_p = -d_UNICODE
!endif
__WXDEBUG_DEFINE_p =
!ifeq WX_DEBUG 1
__WXDEBUG_DEFINE_p = -d__WXDEBUG__
!endif
WXLIBPOSTFIX =
!ifeq WX_DEBUG 0
!ifeq WX_UNICODE 1
WXLIBPOSTFIX = u
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_UNICODE 0
WXLIBPOSTFIX = d
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_UNICODE 1
WXLIBPOSTFIX = ud
!endif
!endif
WXLIBPATH =
!ifeq WX_SHARED 0
WXLIBPATH = \lib\wat_lib
!endif
!ifeq WX_SHARED 1
WXLIBPATH = \lib\wat_dll
!endif

### Variables: ###

THINGS_LIB_CXXFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____things) $(____things_2) -wx -i=..\include $(CPPFLAGS) $(CXXFLAGS)
THINGS_LIB_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_block.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_bmpcombo.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_dropdown.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_filebrws.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_filedlgg.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_genergdi.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_geometry.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_matrix2d.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_menubtn.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_optvalue.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_range.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_spinctld.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_toggle.obj
THINGS_DLL_CXXFLAGS = -bd $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____things) $(____things_2) -wx -i=..\include -dWXMAKINGDLL_THINGS &
	$(CPPFLAGS) $(CXXFLAGS)
THINGS_DLL_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_block.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_bmpcombo.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_dropdown.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_filebrws.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_filedlgg.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_genergdi.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_geometry.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_matrix2d.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_menubtn.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_optvalue.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_range.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_spinctld.obj &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_toggle.obj
THINGSDEMO_CXXFLAGS = $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) &
	$(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include &
	$(____things) $(____things_2) -wx -i=..\include $(CPPFLAGS) $(CXXFLAGS)
THINGSDEMO_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo_thingsdemo.obj


all : watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)
watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) :
	-if not exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) mkdir watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)

### Targets: ###

all : .SYMBOLIC test_for_selected_wxbuild $(__things_lib___depname) $(__things_dll___depname) ..\samples\things\thingsdemo.exe

clean : .SYMBOLIC 
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch
	-if exist ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib del ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib
	-if exist ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.dll del ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.dll
	-if exist ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib del ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib
	-if exist ..\samples\things\thingsdemo.exe del ..\samples\things\thingsdemo.exe

test_for_selected_wxbuild :  
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo The selected wxWidgets build is not available!
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo Please use the options prefixed with WX_ to select another wxWidgets build.
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	exit 1

!ifeq WX_SHARED 0
..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib :  make_dir_things_lib  $(THINGS_LIB_OBJECTS)
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib.lbc
	@for %i in ($(THINGS_LIB_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib.lbc +%i
	wlib -q -p4096 -n -b $^@ @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib.lbc
!endif

make_dir_things_lib :  
	if not exist ..\lib\wat_$(____things_5) mkdir ..\lib\wat_$(____things_5)

!ifeq WX_SHARED 1
..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.dll :  make_dir_things_dll  $(THINGS_DLL_OBJECTS)
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____things_3) libpath ..$(WXLIBPATH)
	@for %i in ($(THINGS_DLL_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc file %i
	@for %i in ( $(__WXLIB_ADV_NAME_p) $(__WXLIB_CORE_NAME_p) $(__WXLIB_BASE_NAME_p) wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc system nt_dll
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll.lbc
	wlib -q -n -b ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib +$^@
!endif

make_dir_things_dll :  
	if not exist ..\lib\wat_$(____things_5) mkdir ..\lib\wat_$(____things_5)

..\samples\things\thingsdemo.exe :  $(THINGSDEMO_OBJECTS) make_sample_dir_thingsdemo watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo_thingsdemo.res $(__things_lib___depname)
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc $(LDFLAGS) libpath $(WX_DIR)$(WXLIBPATH) $(____things_3) libpath ..$(WXLIBPATH) system nt_win ref '_WinMain@16'
	@for %i in ($(THINGSDEMO_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc file %i
	@for %i in ( ..\lib\wat_$(____things_5)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_things.lib $(__WXLIB_ADV_NAME_p) $(__WXLIB_CORE_NAME_p) $(__WXLIB_BASE_NAME_p) wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc option resource=watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo_thingsdemo.res
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo.lbc

make_sample_dir_thingsdemo :  
	if not exist ..\samples\things mkdir ..\samples\things

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_block.obj :  .AUTODEPEND ..\src\block.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_bmpcombo.obj :  .AUTODEPEND ..\src\bmpcombo.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_dropdown.obj :  .AUTODEPEND ..\src\dropdown.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_filebrws.obj :  .AUTODEPEND ..\src\filebrws.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_filedlgg.obj :  .AUTODEPEND ..\src\filedlgg.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_genergdi.obj :  .AUTODEPEND ..\src\genergdi.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_geometry.obj :  .AUTODEPEND ..\src\geometry.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_matrix2d.obj :  .AUTODEPEND ..\src\matrix2d.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_menubtn.obj :  .AUTODEPEND ..\src\menubtn.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_optvalue.obj :  .AUTODEPEND ..\src\optvalue.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_range.obj :  .AUTODEPEND ..\src\range.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_spinctld.obj :  .AUTODEPEND ..\src\spinctld.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_lib_toggle.obj :  .AUTODEPEND ..\src\toggle.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_block.obj :  .AUTODEPEND ..\src\block.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_bmpcombo.obj :  .AUTODEPEND ..\src\bmpcombo.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_dropdown.obj :  .AUTODEPEND ..\src\dropdown.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_filebrws.obj :  .AUTODEPEND ..\src\filebrws.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_filedlgg.obj :  .AUTODEPEND ..\src\filedlgg.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_genergdi.obj :  .AUTODEPEND ..\src\genergdi.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_geometry.obj :  .AUTODEPEND ..\src\geometry.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_matrix2d.obj :  .AUTODEPEND ..\src\matrix2d.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_menubtn.obj :  .AUTODEPEND ..\src\menubtn.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_optvalue.obj :  .AUTODEPEND ..\src\optvalue.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_range.obj :  .AUTODEPEND ..\src\range.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_spinctld.obj :  .AUTODEPEND ..\src\spinctld.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\things_dll_toggle.obj :  .AUTODEPEND ..\src\toggle.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGS_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo_thingsdemo.obj :  .AUTODEPEND ..\samples\things\thingsdemo.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(THINGSDEMO_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\thingsdemo_thingsdemo.res :  .AUTODEPEND ..\samples\things\thingsdemo.rc
	wrc -q -ad -bt=nt -r -fo=$^@  $(____WX_SHARED) $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\include -i=..\samples\things $<
