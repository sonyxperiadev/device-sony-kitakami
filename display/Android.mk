
display-hals := libgralloc libcopybit libmemtrack libqservice libqdutils
display-hals += libgenlock libhwcomposer liboverlay libhdmi

include $(call all-named-subdir-makefiles,$(display-hals))
