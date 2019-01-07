.class public interface abstract Lcom/alibaba/wukong/openav/internal/channel/service/VregisterService;
.super Ljava/lang/Object;
.source "VregisterService.java"

# interfaces
.implements Lizm;


# virtual methods
.method public abstract sendSignalMsg(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/common/NoRetry;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
