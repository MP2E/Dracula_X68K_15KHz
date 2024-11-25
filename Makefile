RUN68   = ./bin/run68
AS      = $(RUN68) x68k_bin/has060x.x
ASFLAGS = -w
LD      = $(RUN68) x68k_bin/hlkx.r
LDFLAGS =
CONV    = $(RUN68) x68k_bin/u8tosj.r

SRCS              = DRA.s
SRCS_INTERMEDIATE = $(addprefix $(INTERMEDIATE_DIR)/,$(SRCS))
OBJS              = $(patsubst %.s,%.o,$(SRCS_INTERMEDIATE))
DRA_X             = DRA.X

INTERMEDIATE_DIR  = _build

.PHONY: all clean

all: $(DRA_X)

$(DRA_X): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

clean:
	rm -f $(DRA_X) $(OBJS)
	rm -rf $(INTERMEDIATE_DIR)

$(INTERMEDIATE_DIR)/%.s: %.s
	mkdir -p $(INTERMEDIATE_DIR)
	$(CONV) < $< > $@

$(INTERMEDIATE_DIR)/%.o: $(INTERMEDIATE_DIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $^
