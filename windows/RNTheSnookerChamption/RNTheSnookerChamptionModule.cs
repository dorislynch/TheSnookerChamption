using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace The.Snooker.Chamption.RNTheSnookerChamption
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTheSnookerChamptionModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTheSnookerChamptionModule"/>.
        /// </summary>
        internal RNTheSnookerChamptionModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTheSnookerChamption";
            }
        }
    }
}
