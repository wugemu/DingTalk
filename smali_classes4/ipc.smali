.class public interface abstract Lipc;
.super Ljava/lang/Object;
.source "H5Session.java"

# interfaces
.implements Liob;


# virtual methods
.method public abstract addListener(Liom;)V
.end method

.method public abstract exitSession()Z
.end method

.method public abstract getH5LinkMonitor()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPages()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Liop;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getScenario()Lipa;
.end method

.method public abstract getServiceWorkerID()Ljava/lang/String;
.end method

.method public abstract getTopPage()Liop;
.end method

.method public abstract getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
.end method

.method public abstract setH5LinkMonitor(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setServiceWorkerID(Ljava/lang/String;)V
.end method
