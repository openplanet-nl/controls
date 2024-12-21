namespace Controls
{
	vec4 GetTextColorForBackground(const vec4 &in backgroundColor)
	{
		if ((backgroundColor.x + backgroundColor.y + backgroundColor.z) / 3.0f > 0.6f) {
			return TEXT_COLOR_DARK;
		}
		return TEXT_COLOR_LIGHT;
	}
}
