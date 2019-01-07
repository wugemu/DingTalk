.class public Lcom/ut/mini/module/appstatus/UTAppStatusRegHelper;
.super Ljava/lang/Object;
.source "UTAppStatusRegHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registeActivityLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p0, "aApplicationInstance"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V
    .locals 1
    .param p0, "aCallbacks"    # Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->registerAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static unRegisterAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V
    .locals 1
    .param p0, "aCallbacks"    # Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->unregisterAppStatusCallbacks(Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static unregisterActivityLifecycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p0, "aApplicationInstance"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    invoke-static {}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->getInstance()Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 44
    :cond_0
    return-void
.end method
