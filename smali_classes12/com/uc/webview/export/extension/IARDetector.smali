.class public interface abstract Lcom/uc/webview/export/extension/IARDetector;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/extension/IARDetector$ARFilter;,
        Lcom/uc/webview/export/extension/IARDetector$ARDetector;,
        Lcom/uc/webview/export/extension/IARDetector$ResultListener;,
        Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;
    }
.end annotation


# virtual methods
.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init(IIIII)V
.end method

.method public abstract isDetector()Z
.end method

.method public abstract pause()V
.end method

.method public abstract removeMarkers()V
.end method

.method public abstract resume()V
.end method

.method public abstract setARSessionFrame(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)V
.end method

.method public abstract setARSessionFrameFilter(Lcom/uc/webview/export/extension/IARDetector$ARSessionFrame;)Ljava/lang/String;
.end method

.method public abstract setMarkers([Ljava/lang/String;)V
.end method

.method public abstract setOption(Ljava/lang/String;)V
.end method

.method public abstract setResultListener(Lcom/uc/webview/export/extension/IARDetector$ResultListener;)V
.end method

.method public abstract stop()V
.end method
