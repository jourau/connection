obj-m += connection.o

KHEAD = ~/work/linux

ifneq ($(MODULE_INCLUDES),)
	CFLAGS_connection.o = $(MODULE_INCLUDES)
endif

all:
	make -C $(KHEAD) M=$(PWD) modules

clean:
	make -C $(KHEAD) M=$(PWD) clean

