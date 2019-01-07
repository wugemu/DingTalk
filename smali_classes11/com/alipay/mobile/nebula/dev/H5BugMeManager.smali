.class public interface abstract Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
.super Ljava/lang/Object;
.source "H5BugMeManager.java"


# virtual methods
.method public abstract hasAccessToDebug(Ljava/lang/String;)Z
.end method

.method public abstract logServiceWorkerOnReceiveValue(Ljava/util/HashMap;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBugMeSwitched(Z)V
.end method

.method public abstract openSettingPanel(Z)V
.end method

.method public abstract release()V
.end method

.method public abstract setDomainWhiteList([Ljava/lang/String;)V
.end method

.method public abstract setUp()V
.end method

.method public abstract setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V
.end method
