.class public interface abstract Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
.super Ljava/lang/Object;
.source "NebulaAppManager.java"


# virtual methods
.method public abstract getNebulaAppCallbackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerNebulaAppCallback(Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;)V
.end method

.method public abstract unregisterNebulaAppCallback(Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppCallback;)V
.end method
