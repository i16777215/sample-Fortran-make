
TARGET = hello-V4.out

# /// default compiler
# FC = gfortran
# FCOPT = -g 
# OPT_MOD = -J

# /// intel compiler in Linux 
# FC = ifort 
# FCOPT = -g -traceback 
# OPT_MOD = -module

# /// intel compiler in Mac OS X
FC = ifort 
MOPT = -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib
FCOPT = -g -traceback $(MOPT) 
OPT_MOD = -module

DIR_SRC = ./src
DIR_TG = ./build
DIR_OBJ = ./_obj
DIR_OBJMOD = ./_mod

# MODULE: GLOBAL VARIABLES
MOD_GLBS = mod_glb_var.f90 
MOD_GLBS_OBJS = $(addsuffix .o, $(basename $(MOD_GLBS)))
MOD_GLBS_OBJMODS = $(addsuffix .mod, $(basename $(MOD_GLBS))) #unused now


# MODULE: SUBROUTINES SOURCES
# alphabet order 
DIR_SRCS_A    = dir_A
DIR_SRCS_B 	  = dir_B
MOD_SRCS_A = \
			dir_A/mod_A_tool.f90 \
			dir_A/mod_A.f90 
MOD_SRCS_B = \
			dir_B/mod_B_tool.f90 \
			dir_B/mod_B.f90 
MOD_SRCS := \
			$(MOD_SRCS_A) 		\
			$(MOD_SRCS_B) 		\
			mod_prg_hello.f90 
MOD_OBJS = $(addsuffix .o, $(basename $(MOD_SRCS)))
MOD_OBJMODS = $(addsuffix .mod, $(basename $(MOD_SRCS))) #unused now

SRCS = main.f90
OBJS = $(addsuffix .o, $(basename $(SRCS)))

ALLOBJS := $(addprefix $(DIR_OBJ)/, $(MOD_GLBS_OBJS) $(MOD_OBJS)  )
ALLOBJS := $(ALLOBJS) $(addprefix $(DIR_OBJ)/, $(OBJS) )

## definition of =, := are differnt in makefile
## := is like = in C/C++/Fortran 

.SUFFIXES: .o .mod .f90

$(DIR_OBJ)/%.o: $(DIR_SRC)/%.f90
	$(FC) -o $@ -c $< $(OPT_MOD) $(DIR_OBJMOD) $(FCOPT) 

$(DIR_TG)/$(TARGET): $(ALLOBJS)
	$(FC)  -o $@ $(FCOPT) $^ 

## $< is the first dependency
## $^ is the list of dependencies
## $@ is the target

%.mod: %.f90 %.o
	@:
## this is just compare the time stamp of the .mod file and the .f90 file
## nothing to do 

clean:
	@-rm -rf *.out.dSYM *.o *.mod log.txt 
	@-rm -r ./_obj
	@-rm -r ./_mod 
	@-rm -r ./build 

# >>> MKFO: make Folder for object file , by `make dir`
dir: 
	@if [ ! -d $(DIR_TG) ]; then \
		echo ";; mkdir $(DIR_TG)"; mkdir $(DIR_TG); \
	fi
	@if [ ! -d $(DIR_OBJMOD) ]; then \
		echo ";; mkdir $(DIR_OBJMOD)"; mkdir $(DIR_OBJMOD); \
		echo ";; mkdir $(DIR_OBJMOD)/$(DIR_SRCS_A)"; mkdir $(DIR_OBJMOD)/$(DIR_SRCS_A); \
		echo ";; mkdir $(DIR_OBJMOD)/$(DIR_SRCS_B)"; mkdir $(DIR_OBJMOD)/$(DIR_SRCS_B); \
	fi
	@if [ ! -d $(DIR_OBJ) ]; then \
		echo ";; mkdir $(DIR_OBJ)"; mkdir $(DIR_OBJ); \
		echo ";; mkdir $(DIR_OBJ)/$(DIR_SRCS_A)"; mkdir $(DIR_OBJ)/$(DIR_SRCS_A); \
		echo ";; mkdir $(DIR_OBJ)/$(DIR_SRCS_B)"; mkdir $(DIR_OBJ)/$(DIR_SRCS_B); \
	fi
# <<< MKFO

echo:
	@echo $(SRCS)
	@echo $(OBJS)
	@echo $(ALLOBJS)
