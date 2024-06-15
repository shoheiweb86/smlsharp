SMLSHARP = smlsharp
SMLFLAGS = -O2
LIBS =
all: main
main: FunctionTest.smi main.smi FunctionTest.o main.o
	$(SMLSHARP) $(LDFLAGS) -o main main.smi $(LIBS)
FunctionTest.o: FunctionTest.sml FunctionTest.smi
	$(SMLSHARP) $(SMLFLAGS) -o FunctionTest.o -c FunctionTest.sml
main.o: main.sml FunctionTest.smi main.smi
	$(SMLSHARP) $(SMLFLAGS) -o main.o -c main.sml
