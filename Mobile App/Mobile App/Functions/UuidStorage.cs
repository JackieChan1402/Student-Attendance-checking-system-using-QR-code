using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Win32;

namespace Mobile_App.Functions
{
    public static class UuidStorage
    {
        private const string UuidKey = "DeviceUuid";

        /// <summary>
        ///  Return UUID in machine present. If not have, there will be create and save to SecureStorage.
        /// </summary>
        /// <param name="uuid"></param>

        public static async Task<string> GetOrCreateUuidAsync()
        {
            try
            {
                var uuid = await SecureStorage.GetAsync(UuidKey);
                if (!string.IsNullOrEmpty(uuid))
                {
                    return uuid;
                }

                uuid = Guid.NewGuid().ToString();
                await SecureStorage.SetAsync(UuidKey, uuid);
                return uuid;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return null;
            }
        }
        
        /// <summary>
        /// Remove UUID saved (for testing/debug).
        /// </summary>
        public static void ClearUuid()
        {
            SecureStorage.Remove(UuidKey);
        }
    }
}
