.class public Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;
.super Ljava/lang/Object;
.source "EnvInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 121
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.module.fingerprint.SafepayChecker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const-string/jumbo v0, "EnvInfoUtil"

    const-string/jumbo v1, "getFingerprintChecker FAILED!!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string/jumbo v1, "EnvInfoUtil"

    const-string/jumbo v2, "getFingerprintChecker FAILED With Exception!!!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "getFpSecdata"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v7

    .line 90
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v8

    .line 89
    invoke-static {v3, v4, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    const-string/jumbo v3, "EnvInfoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getFpSecdata: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v3, "EnvInfoUtil"

    const-string/jumbo v4, "getFpSecdata\u8017\u65f6\uff1a"

    invoke-static {v3, v4, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 93
    if-eqz v2, :cond_0

    .line 94
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getBaseEnvInfo()Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 55
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 56
    const-string/jumbo v3, "apdid"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v3, "apdidToken"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdidToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v3, "appName"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v3, "appVersion"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v3, "viSdkVersion"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v3, "deviceType"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v3, "EnvInfoUtil"

    const-string/jumbo v4, "AppInfo\u62fc\u63a5\u8017\u65f6\uff1a"

    invoke-static {v3, v4, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 65
    const-string/jumbo v3, "deviceModel"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v3, "manufacturer"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v3, "osVersion"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v3, "EnvInfoUtil"

    const-string/jumbo v4, "DeviceInfo\u62fc\u63a5\u8017\u65f6\uff1a"

    invoke-static {v3, v4, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    return-object v2
.end method

.method public static getBioInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 159
    const-string/jumbo v1, "bioMetaInfo"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v1, "appName"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v1, "appVersion"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v1, "viSdkVersion"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v1, "deviceType"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "deviceModel"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "osVersion"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBioMetaInfo()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 140
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "com.alipay.mobile.security.bio.api.BioDetectorBuilder"

    const-string/jumbo v4, "getMetaInfos"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v1, v4, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "EnvInfoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u83b7\u53d6\u5230\u751f\u7269\u4fe1\u606f\uff08getBioMetaInfo\uff09:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "EnvInfoUtil"

    const-string/jumbo v4, "getBioMetaInfo\u8017\u65f6\uff1a"

    invoke-static {v1, v4, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 151
    :goto_0
    return-object v0

    .line 150
    :cond_0
    const-string/jumbo v0, "EnvInfoUtil"

    const-string/jumbo v1, "getBioMetaInfo\u8017\u65f6\uff1a"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 151
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getBirdNestInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.module.dynamic.helper.BirdNestHelper"

    const-string/jumbo v1, "getEngineParams"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    const-string/jumbo v1, "EnvInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u83b7\u53d6\u5230\u9e1f\u5de2\u4fe1\u606f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getEnvInfo()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {v0, v0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfoWithExt(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvInfoForMsp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 175
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 177
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 178
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/info/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getInstalledCert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getViSdkVersion()Ljava/lang/String;

    move-result-object v6

    .line 183
    if-eqz v1, :cond_0

    .line 184
    const-string/jumbo v7, "secData"

    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    const-string/jumbo v1, "sfp"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    const-string/jumbo v1, "bmi"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    const-string/jumbo v1, "dm"

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 196
    const-string/jumbo v1, "certsn"

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 199
    const-string/jumbo v1, "viv"

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvInfoWithExt(ZZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBaseEnvInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 36
    if-eqz p0, :cond_0

    .line 37
    const-string/jumbo v2, "isSupportFP"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getIsSupportFP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    const-string/jumbo v3, "secData"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    const-string/jumbo v2, "bioMetaInfo"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBioMetaInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    const-string/jumbo v2, "bp"

    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getBirdNestInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v2, "externParams"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFpSecdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFpSecdataJO()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getFpSecdataJO(Z)Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    .prologue
    .line 104
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    :try_start_0
    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    const-string/jumbo v2, "EnvInfoUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "json fail "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstalledCert(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    const-string/jumbo v0, "com.alipay.mobile.verifyidentity.module.cert.helper.CertHelper"

    const-string/jumbo v1, "getInstalledCert"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    const-string/jumbo v1, "EnvInfoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u83b7\u53d6\u5230\u672c\u5730\u8bc1\u4e66\u72b6\u6001:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getIsSupportFP()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->a()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "isFingerprintAvailable"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    .line 75
    invoke-static {v3, v4, v5, v6}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    const-string/jumbo v3, "EnvInfoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getIsSupportFP: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v3, "EnvInfoUtil"

    const-string/jumbo v4, "getIsSupportFP\u8017\u65f6\uff1a"

    invoke-static {v3, v4, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 79
    if-nez v2, :cond_0

    const-string/jumbo v0, "false"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecDataForMsp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 206
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getFpSecdataJO()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v2, "secData"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
