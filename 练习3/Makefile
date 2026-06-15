CC = gcc
CFLAGS = -Wall -g
AR = ar
ARFLAGS = rcs

# 静态库相关
STATIC_LIB = libmycircle.a
STATIC_OBJ = circlefuns_static.o

# 动态库相关
DYNAMIC_LIB = libmycircle.so
DYNAMIC_OBJ = circlefuns_dynamic.o

# 所有目标
.PHONY: all static dynamic clean test_static test_dynamic

all: static dynamic

# ---- 静态库编译 ----
static: $(STATIC_LIB)

$(STATIC_LIB): $(STATIC_OBJ)
	$(AR) $(ARFLAGS) $@ $^

$(STATIC_OBJ): circlefuns.c circlefuns.h
	$(CC) $(CFLAGS) -c $< -o $@

test_static: test.c $(STATIC_LIB)
	$(CC) $(CFLAGS) $< -L. -lmycircle -o $@

# ---- 动态库编译 ----
dynamic: $(DYNAMIC_LIB)

$(DYNAMIC_LIB): $(DYNAMIC_OBJ)
	$(CC) -shared -o $@ $^

$(DYNAMIC_OBJ): circlefuns.c circlefuns.h
	$(CC) $(CFLAGS) -fPIC -c $< -o $@

test_dynamic: test.c $(DYNAMIC_LIB)
	$(CC) $(CFLAGS) $< -L. -lmycircle -o $@

clean:
	rm -f *.o *.a *.so test_static test_dynamic
