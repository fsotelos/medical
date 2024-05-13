namespace Infraestructure
{
    public class AppConfigurationManager
    {
        private static AppConfigurationManager instance;
        private static readonly object lockObject = new object();

        private AppConfigurationManager()
        {
        }

        public static AppConfigurationManager GetInstance()
        {
            
            if (instance == null)
            {
                lock (lockObject)
                {
                    if (instance == null)
                    {
                        instance = new AppConfigurationManager();
                    }
                }
            }

            return instance;
        }
        public string ConnectionString { get; set; }
    }

}
