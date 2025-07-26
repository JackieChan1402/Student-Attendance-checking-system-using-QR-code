using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mobile_App.Functions
{
    public static class DeviceInforManager
    {
        public static string GetDeviceInfor()
        {
            var deviceModel = DeviceInfo.Model;
            var deviceManufacturer = DeviceInfo.Manufacturer;
            var devicePlatform = DeviceInfo.Platform.ToString();
            var deviceIdiom = DeviceInfo.Idiom.ToString();

            return $"Device Model: {deviceModel}\n" +
               $"Manufacturer: {deviceManufacturer}\n" +
               $"Platform: {devicePlatform}\n" +
               $"Idiom: {deviceIdiom}";
        }
    }
}
