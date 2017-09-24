CXX=g++
UPX=upx
UPXFLAGS=-9
CFLAGS=-static -O3
LDFLAGS=-lRasapi32
SRCPATH=SXWindows
OBJS=$(SRCPATH)/Source.o $(SRCPATH)/SXEncryption.o
TARGET=SXWindows.exe
default:$(TARGET)
$(TARGET):$(OBJS)
	$(CXX) $(CFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS)
UPX: $(TARGET)
	$(UPX) $(UPXFLAGS) $(TARGET)
clean:
	rm -f $(OBJS) $(TARGET)
