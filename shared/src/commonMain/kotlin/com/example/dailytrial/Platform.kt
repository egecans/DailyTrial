package com.example.dailytrial

// like interface, it should be both android and ios project under shared with name.android.kt
expect class Platform {
    val osName: String
    val osVersion: String
    val deviceModel: String
    val density: Int

    fun logSystemInfo()
}
