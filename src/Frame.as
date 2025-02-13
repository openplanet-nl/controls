namespace Controls
{
	void BeginFrame(const string &in text, bool requireInput = false, const vec4 &in color = COLOR_DEFAULT)
	{
		vec2 framePadding = UI::GetStyleVarVec2(UI::StyleVar::FramePadding);

		UI::PushStyleColor(UI::Col::FrameBg, color);
		UI::PushStyleColor(UI::Col::Text, GetTextColorForBackground(color));

		UI::PushStyleVar(UI::StyleVar::FramePadding, vec2(15, 15));

		UI::BeginChild(text, vec2(-1, 0),
			UI::ChildFlags::FrameStyle | UI::ChildFlags::AutoResizeY,
			requireInput ? UI::WindowFlags::None : UI::WindowFlags::NoInputs);

		UI::PushStyleVar(UI::StyleVar::FramePadding, framePadding); // Restore frame padding
		UI::TextWrapped(text);
	}

	void EndFrame()
	{
		UI::PopStyleVar(); // Restored frame padding
		UI::EndChild();

		// Frame style
		UI::PopStyleVar();
		UI::PopStyleColor(2);
	}

	void Frame(const string &in text, bool requireInput = false, const vec4 &in color = COLOR_DEFAULT)
	{
		BeginFrame(text, requireInput, color);
		EndFrame();
	}

	void BeginFramePrimary(const string &in text, bool requireInput = false) { BeginFrame(text, requireInput, COLOR_PRIMARY); }
	void BeginFrameInfo(const string &in text, bool requireInput = false) { BeginFrame(text, requireInput, COLOR_INFO); }
	void BeginFrameLink(const string &in text, bool requireInput = false) { BeginFrame(text, requireInput, COLOR_LINK); }
	void BeginFrameSuccess(const string &in text, bool requireInput = false) { BeginFrame(text, requireInput, COLOR_SUCCESS); }
	void BeginFrameWarning(const string &in text, bool requireInput = false) { BeginFrame(text, requireInput, COLOR_WARNING); }
	void BeginFrameDanger(const string &in text, bool requireInput = false) { BeginFrame(text, requireInput, COLOR_DANGER); }

	void FramePrimary(const string &in text, bool requireInput = false) { Frame(text, requireInput, COLOR_PRIMARY); }
	void FrameInfo(const string &in text, bool requireInput = false) { Frame(text, requireInput, COLOR_INFO); }
	void FrameLink(const string &in text, bool requireInput = false) { Frame(text, requireInput, COLOR_LINK); }
	void FrameSuccess(const string &in text, bool requireInput = false) { Frame(text, requireInput, COLOR_SUCCESS); }
	void FrameWarning(const string &in text, bool requireInput = false) { Frame(text, requireInput, COLOR_WARNING); }
	void FrameDanger(const string &in text, bool requireInput = false) { Frame(text, requireInput, COLOR_DANGER); }
}
