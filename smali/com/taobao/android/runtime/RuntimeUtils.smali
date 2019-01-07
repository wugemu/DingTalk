.class public Lcom/taobao/android/runtime/RuntimeUtils;
.super Ljava/lang/Object;
.source "RuntimeUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v4

    new-instance v5, Lcom/taobao/android/runtime/RuntimeUtils$1;

    invoke-direct {v5}, Lcom/taobao/android/runtime/RuntimeUtils$1;-><init>()V

    invoke-virtual {v4, v5}, Lcom/taobao/android/runtime/AndroidRuntime;->setMonitor(Lcom/taobao/android/runtime/IMonitor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    move v1, v2

    .line 50
    .local v1, "isAppDebuggable":Z
    :goto_1
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v4

    if-nez v1, :cond_1

    :goto_2
    invoke-virtual {v4, p0, v2}, Lcom/taobao/android/runtime/AndroidRuntime;->init(Landroid/content/Context;Z)V

    .line 51
    sput-boolean v3, Lcom/taobao/android/runtime/Dex2OatService;->sBootCompleted:Z

    .line 52
    return v3

    .line 34
    .end local v1    # "isAppDebuggable":Z
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    move v1, v3

    .line 48
    goto :goto_1

    .restart local v1    # "isAppDebuggable":Z
    :cond_1
    move v2, v3

    .line 50
    goto :goto_2
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/runtime/AndroidRuntime;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourcePathName"    # Ljava/lang/String;
    .param p2, "outputPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/taobao/android/runtime/AndroidRuntime;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public static presetOptions()Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/android/runtime/AndroidRuntime;->setVerificationEnabled(Z)V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public static setEnable(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 69
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/android/runtime/AndroidRuntime;->setEnabled(Z)V

    .line 70
    return-void
.end method

.method public static setExcludeVersions(Ljava/lang/String;)V
    .locals 1
    .param p0, "excludeVersions"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lcom/taobao/android/runtime/AndroidRuntime;->getInstance()Lcom/taobao/android/runtime/AndroidRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/android/runtime/AndroidRuntime;->setExcludeVersions(Ljava/lang/String;)V

    .line 74
    return-void
.end method
