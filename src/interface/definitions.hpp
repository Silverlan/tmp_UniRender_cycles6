/* This Source Code Form is subject to the terms of the Mozilla Public
* License, v. 2.0. If a copy of the MPL was not distributed with this
* file, You can obtain one at http://mozilla.org/MPL/2.0/.
*
* Copyright (c) 2023 Silverlan
*/

#ifndef __UNIRENDER_CYCLES_DEFINITIONS_HPP__
#define __UNIRENDER_CYCLES_DEFINITIONS_HPP__

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

namespace ccl {
	class Session;
	class Scene;
	class ShaderInput;
	class ShaderNode;
	class ShaderOutput;
	class ShaderGraph;
	struct float3;
	struct float2;
	struct Transform;
	class ImageTextureNode;
	class EnvironmentTextureNode;
	class BufferParams;
	class SessionParams;
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
namespace pragma::scenekit {
	class TileManager;
	enum class PassType : uint32_t;
};

#endif
