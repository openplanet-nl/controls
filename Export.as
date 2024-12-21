namespace Controls
{
	// Tags
	import void Tag(const string &in text, const vec4 &in color = COLOR_DEFAULT) from "Controls";
	import void TagPrimary(const string &in text) from "Controls";
	import void TagInfo(const string &in text) from "Controls";
	import void TagLink(const string &in text) from "Controls";
	import void TagSuccess(const string &in text) from "Controls";
	import void TagWarning(const string &in text) from "Controls";
	import void TagDanger(const string &in text) from "Controls";

	import vec4 DrawTag(const vec4 &in rect, const string &in text, const vec4 &in color = COLOR_DEFAULT) from "Controls";
	import vec4 DrawTag(const vec2 &in pos, const string &in text, const vec4 &in color = COLOR_DEFAULT) from "Controls";
	import vec4 DrawTagWithInvisButton(const vec2 &in pos, const vec2 &in windowPos, const string &in text, const vec4 &in color = COLOR_DEFAULT) from "Controls";

	// Frames
	import void BeginFrame(const string &in text, bool requireInput = false, const vec4 &in color = COLOR_DEFAULT) from "Controls";
	import void BeginFramePrimary(const string &in text, bool requireInput = false) from "Controls";
	import void BeginFrameInfo(const string &in text, bool requireInput = false) from "Controls";
	import void BeginFrameLink(const string &in text, bool requireInput = false) from "Controls";
	import void BeginFrameSuccess(const string &in text, bool requireInput = false) from "Controls";
	import void BeginFrameWarning(const string &in text, bool requireInput = false) from "Controls";
	import void BeginFrameDanger(const string &in text, bool requireInput = false) from "Controls";
	import void EndFrame() from "Controls";

	import void Frame(const string &in text, bool requireInput = false, const vec4 &in color = COLOR_DEFAULT) from "Controls";
	import void FramePrimary(const string &in text, bool requireInput = false) from "Controls";
	import void FrameInfo(const string &in text, bool requireInput = false) from "Controls";
	import void FrameLink(const string &in text, bool requireInput = false) from "Controls";
	import void FrameSuccess(const string &in text, bool requireInput = false) from "Controls";
	import void FrameWarning(const string &in text, bool requireInput = false) from "Controls";
	import void FrameDanger(const string &in text, bool requireInput = false) from "Controls";
}
