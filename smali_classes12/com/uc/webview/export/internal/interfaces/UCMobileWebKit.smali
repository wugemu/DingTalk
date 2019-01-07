.class public interface abstract Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit$ReceiveDispatchResponseListener;
    }
.end annotation


# static fields
.field public static final CORE_EVENT_SETWEBCONTENTS_DEBUGGING:I = 0x64

.field public static final CORE_EVENT_START_TCP_DEVTOOLS:I = 0x65


# virtual methods
.method public abstract fontDownloadFinished()V
.end method

.method public abstract getCoreBuildSeq()Ljava/lang/String;
.end method

.method public abstract getCoreVersion()Ljava/lang/String;
.end method

.method public abstract getWebResources()Lcom/uc/webview/export/internal/interfaces/IWebResourceInternal;
.end method

.method public abstract notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onScreenLock()V
.end method

.method public abstract onScreenUnLock()V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract onWindowSizeChanged()V
.end method

.method public abstract preloadResource(Ljava/lang/String;IILandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/WebResourceResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeUserScript(Ljava/lang/String;)V
.end method

.method public abstract setCDLocationListener(Landroid/location/LocationListener;)V
.end method

.method public abstract setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V
.end method

.method public abstract setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V
.end method

.method public abstract setNetworkDelegate(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
.end method

.method public abstract setPluginServiceClassPath(Ljava/lang/String;)V
.end method

.method public abstract setReceiveDispatchResponseListener(Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit$ReceiveDispatchResponseListener;)V
.end method

.method public abstract setSocketParam(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V
.end method

.method public abstract updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract updateUserScript(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
