CROSS_COMPILE :=
GCC := $(CROSS_COMPILE)gcc
LD := $(CROSS_COMPILE)ld
RM := rm

TARGET := demo

# *.c文件目录
src_path :=  	.	\
				./msdl

# *.h文件目录
inc_path := 	$(src_path) \
				./include

define := -g
inc := $(patsubst %, -I%, $(inc_path))
CFLAGS := -c $(inc) $(define)

# 库目录
lib_path := 

libs :=			pthread	\

LIBS := $(patsubst %, -l%, $(libs)) $(patsubst %, -L%, $(lib_path))

srcs := $(wildcard $(addsuffix /*.c, $(src_path)))
OBJS := $(patsubst %.c, %.o, $(srcs))

all:$(TARGET)
	
$(TARGET):$(OBJS) FORCE
	$(GCC) $(LIBS) -o $@ $<

%.o:%.c
	$(GCC) $(CFLAGS) -o $@ $^

FORCE:
.PHONY:FORCE clean all 
clean:
	@$(RM) $(TARGET) $(OBJS) -rvf



