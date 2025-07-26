namespace Mobile_App.Main_Screen;

public partial class ResutlPage : ContentPage
{
	public ResutlPage(string responseString)
	{
		InitializeComponent();
		result.Text = responseString;
	}
}