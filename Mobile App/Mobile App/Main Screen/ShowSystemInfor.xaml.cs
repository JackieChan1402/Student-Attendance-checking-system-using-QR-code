using Mobile_App.Functions;

namespace Mobile_App.Main_Screen;

public partial class ShowSystemInfor : ContentPage
{
    public ShowSystemInfor()
    {
        InitializeComponent();
        string deviceInfo = DeviceInforManager.GetDeviceInfor();

        result.Text = deviceInfo;
        GetUuidCode();
        GetUUIDEncryption();

    }
    private async void GetUuidCode()
    {
        var Uuid = await UuidStorage.GetOrCreateUuidAsync();
        uuid_code.Text = Uuid.ToString();
    }
    private async void GetUUIDEncryption()
    {
        var pass = await DeviceFingerprintGenerator.GenerateFingerprintAsync();
        Encryption_UUID.Text = pass.ToString();
    }
}