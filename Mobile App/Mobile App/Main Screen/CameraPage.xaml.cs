using System.Text;
using System.Text.Json;
using Mobile_App.Dto;
using Mobile_App.Functions;

namespace Mobile_App.Main_Screen;

public partial class CameraPage : ContentPage
{


    public CameraPage()
	{
		InitializeComponent();
		CameraView.Options = new ZXing.Net.Maui.BarcodeReaderOptions
		{
			Formats = ZXing.Net.Maui.BarcodeFormat.QrCode,
			AutoRotate = true,
			Multiple = false
		};
	}
	protected void BarcodeDected(object sender, ZXing.Net.Maui.BarcodeDetectionEventArgs e)
	{
		MainThread.BeginInvokeOnMainThread(async () =>
		{
			var result = e.Results.FirstOrDefault()?.Value;
			if (!string.IsNullOrEmpty(result))
			{
				CameraView.IsDetecting = false;
                await SendDeviceInfoAndNavigateAsync(result.Trim());

			}
		});
	}
	private async void GoLinkButton(object sender, EventArgs e)
	{
		var url = TextLinks.Text.Trim();
		if (String.IsNullOrWhiteSpace(url))
		{
            await DisplayAlert("Waring", "Dont make links text empty.", "OK");
			return;
        }
        await SendDeviceInfoAndNavigateAsync(url);
    }
    private async Task SendDeviceInfoAndNavigateAsync(string url)
    {
        if (!Uri.IsWellFormedUriString(url, UriKind.Absolute))
        {
            await DisplayAlert("Invalid URL", "The link is not a valid URL.", "OK");
            return;
        }

        try
        {
            var payload = new DeviceClientInforDto
            {
                DeviceName = DeviceInfo.Name,
                DeviceUUID = await DeviceFingerprintGenerator.GenerateFingerprintAsync(),
                DeviceSystem = DeviceInfo.Platform.ToString()
            };

            var json = JsonSerializer.Serialize(payload);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            using var client = new HttpClient();
            var response = await client.PostAsync(url, content);
            var responseText = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                await Navigation.PushAsync(new ResutlPage(responseText));
            }
            else
            {
                await DisplayAlert("Error", $"Server returned: {responseText}", "OK");
            }
        }
        catch (HttpRequestException ex)
        {
            Console.WriteLine(ex.ToString());
            await DisplayAlert("Http Error", ex.Message, "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

}