SUB_DIR =libawb libisp libphyvi libvenc libfvideo libsns ispsample
sbdirs:
	for dir in $(SUB_DIR); do \
      $(MAKE) -C $$dir; \
    done

clean:
	for dir in $(SUB_DIR); do \
      $(MAKE) -C $$dir clean; \
    done
