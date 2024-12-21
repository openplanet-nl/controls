[Setting name="Display demo" category="Debug"]
bool Setting_ShowDemo = false;

void RenderInterface()
{
	if (!Setting_ShowDemo) {
		return;
	}

	UI::SetNextWindowSize(400, 500);
	if (UI::Begin("Controls Demo", Setting_ShowDemo)) {
		UI::Text("This is the demo for the Controls dependency.");

		if (UI::CollapsingHeader("Tags")) {
			Controls::Tag("Basic Tag");
			Controls::TagPrimary("Primary Tag");
			Controls::TagInfo("Info Tag");
			Controls::TagLink("Link Tag");
			Controls::TagSuccess("Success Tag");
			Controls::TagWarning("Warning Tag");
			Controls::TagDanger("Danger Tag");
		}

		if (UI::CollapsingHeader("Frames")) {
			Controls::Frame("Basic Frame");

			Controls::BeginFrame("Basic Frame with input", true);
			if (UI::Button("Click me")) {
				print("You clicked me!");
			}
			Controls::EndFrame();

			Controls::FramePrimary("Primary Frame");
			Controls::FrameInfo("Info Frame");
			Controls::FrameLink("Link Frame");
			Controls::FrameSuccess("Success Frame");
			Controls::FrameWarning("Warning Frame");
			Controls::FrameDanger("Danger Frame");
		}
	}
	UI::End();
}
