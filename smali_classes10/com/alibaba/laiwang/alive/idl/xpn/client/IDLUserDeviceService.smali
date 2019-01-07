.class public interface abstract Lcom/alibaba/laiwang/alive/idl/xpn/client/IDLUserDeviceService;
.super Ljava/lang/Object;
.source "IDLUserDeviceService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract regDev(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregistDevice(Ljava/lang/String;Liyv;)V
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
