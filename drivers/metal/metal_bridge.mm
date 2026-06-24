#import <QuartzCore/CAMetalLayer.h>

#include <cstddef>
#include <cstdint>

#include <Metal/Metal.hpp>
#include <QuartzCore/QuartzCore.hpp>

extern "C" CA::MetalLayer* ToCAMetalLayer(uint64_t layer_handle) {
	CAMetalLayer* layer = (__bridge CAMetalLayer*)(void*)layer_handle;
	return (__bridge CA::MetalLayer*)layer;
}
