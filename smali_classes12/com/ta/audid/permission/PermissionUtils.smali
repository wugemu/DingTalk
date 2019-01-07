.class public Lcom/ta/audid/permission/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/ta/audid/permission/PermissionUtils;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkStoragePermissionGranted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/ta/audid/permission/PermissionUtils;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkWifiStatePermissionGranted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/ta/audid/permission/PermissionUtils;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x17

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 56
    :goto_0
    return v2

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/ta/audid/utils/AppInfoUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    .line 39
    .local v1, "targetSdkVersion":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_4

    .line 40
    if-lt v1, v4, :cond_2

    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .local v0, "result":Z
    :goto_1
    move v2, v0

    .line 56
    goto :goto_0

    .end local v0    # "result":Z
    :cond_1
    move v0, v2

    .line 43
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0, p1}, Lcom/ta/audid/permission/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .restart local v0    # "result":Z
    :goto_2
    goto :goto_1

    .end local v0    # "result":Z
    :cond_3
    move v0, v2

    goto :goto_2

    .line 52
    :cond_4
    invoke-static {p0, p1}, Lcom/ta/audid/permission/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .restart local v0    # "result":Z
    :goto_3
    goto :goto_1

    .end local v0    # "result":Z
    :cond_5
    move v0, v2

    goto :goto_3
.end method
