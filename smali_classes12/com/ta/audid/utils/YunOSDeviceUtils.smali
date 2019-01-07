.class public Lcom/ta/audid/utils/YunOSDeviceUtils;
.super Ljava/lang/Object;
.source "YunOSDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBuildVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string/jumbo v2, "YUNOS_BUILD_VERSION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 85
    .local v0, "lField":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private static getYunOSTVUuid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    const-string/jumbo v2, ""

    .line 63
    .local v2, "lUUID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "com.yunos.baseservice.clouduuid.CloudUUID"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    .local v1, "cloudUuid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "getCloudUUID"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 65
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "cloudUuid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getYunOSUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const-string/jumbo v1, "ro.aliyun.clouduuid"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "lUUID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string/jumbo v1, "ro.sys.aliyun.clouduuid"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->getYunOSTVUuid()Ljava/lang/String;

    move-result-object v0

    .line 57
    .end local v0    # "lUUID":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getYunOSVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string/jumbo v2, "ro.yunos.version"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "oSVersion":Ljava/lang/String;
    invoke-static {}, Lcom/ta/audid/utils/YunOSDeviceUtils;->getBuildVersion()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "buildVersion":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    move-object v1, v0

    .line 78
    :cond_0
    return-object v1
.end method

.method public static isYunOSPhoneSystem()Z
    .locals 2

    .prologue
    .line 20
    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lemur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ro.yunos.version"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.yunos.build.version"

    .line 22
    invoke-static {v0}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isYunOSTvSystem()Z
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "ro.yunos.product.chip"

    invoke-static {v0}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.yunos.hardware"

    .line 34
    invoke-static {v0}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
