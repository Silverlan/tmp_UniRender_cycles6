// SPDX-FileCopyrightText: (c) 2024 Silverlan <opensource@pragma-engine.com>
// SPDX-License-Identifier: MIT

#ifndef __UNIRENDER_CYCLES_DEFINITIONS_HPP__
#define __UNIRENDER_CYCLES_DEFINITIONS_HPP__

#include <cinttypes>
#include <util/math.h>

namespace uimg {
	class ImageBuffer;
	struct ImageLayerSet;
};
namespace util::ocio {
	class ColorProcessor;
};
namespace oidn {
	class DeviceRef;
};

namespace udm {
	struct Property;
};
namespace OpenImageIO_v2_1 {
	class ustring;
};
namespace umath {
	class Transform;
	class ScaledTransform;
};
namespace spdlog {
	class logger;
};
namespace OpenSubdiv::v3_6_0::Far {
	class PrimvarRefiner;
};
class DataStream;

namespace util::baking {
	struct BakePixel;
	struct BakeDataView;
};

#endif
