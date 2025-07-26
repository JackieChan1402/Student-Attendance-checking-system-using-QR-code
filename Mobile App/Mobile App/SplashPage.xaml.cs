using Microsoft.Maui.Layouts;

namespace Mobile_App;

public partial class SplashPage : ContentPage
{
	public SplashPage()
	{
		InitializeComponent();
		
	}
    protected override async void OnAppearing()
    {
        base.OnAppearing();
		await Task.Delay(100);
		 await AnimateDot();
	}
    private async Task AnimateDot()
	{
        await DotLabel.TranslateTo(0, -50, 300, Easing.SinOut);
        await DotLabel.TranslateTo(0, 0, 400, Easing.BounceOut);

        double dotWidth = DotLabel.Width;
        double dotHeight = DotLabel.Height;

        if (dotWidth == 0 || dotHeight == 0)
        {
            await Task.Delay(50);
            dotWidth = DotLabel.Width;
            dotHeight = DotLabel.Height;
        }
        RippleEffect.WidthRequest = dotWidth;
        RippleEffect.HeightRequest = dotHeight;

        RippleEffect.Scale = 1;
        RippleEffect.Opacity = 1;

        var dotPosition = DotLabel.Bounds;
        AbsoluteLayout.SetLayoutBounds(RippleEffect, new Rect(0.5, 0.5, dotWidth, dotHeight));
        AbsoluteLayout.SetLayoutFlags(RippleEffect, AbsoluteLayoutFlags.PositionProportional);

        Color boomColor;
        var currentTheme = Application.Current.RequestedTheme;

        if (currentTheme == AppTheme.Dark)
        {
            boomColor = Color.FromArgb("#1C1C2E");  
        }
        else
        {
            boomColor = Colors.White;      
        }

        RippleEffect.BackgroundColor = boomColor;
        BackgroundOverlay.BackgroundColor = boomColor;

        var width = Application.Current.MainPage.Width;
        var height = Application.Current.MainPage.Height;
        double diagonal = Math.Sqrt(width * width + height * height);

        double scale = diagonal / dotWidth;

      
        await RippleEffect.ScaleTo(scale, 300, Easing.CubicIn);

        Application.Current.MainPage = new AppShell();
    }
}