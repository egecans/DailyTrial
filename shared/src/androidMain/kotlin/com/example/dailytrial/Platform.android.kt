package com.example.dailytrial

import android.content.res.Resources
import android.os.Build
import android.util.Log
import kotlin.math.round

// actual implementation of expect class
actual class Platform {
    actual val osName: String
        get() = "Android"
    actual val osVersion: String
        get() = "${Build.VERSION.SDK_INT}"
    actual val deviceModel: String
        get() = "${Build.MANUFACTURER} ${Build.MODEL}"
    actual val density: Int
        get() = round(Resources.getSystem().displayMetrics.density).toInt()

    private val tag = "Daily Pulse"
    // actual implementation of expect function
    actual fun logSystemInfo() {
        Log.i(tag, "$osName $osVersion $deviceModel $density")
    }

}




// actual implementation of expect function
//actual fun getPlatform(): Platform = AndroidPlatform()