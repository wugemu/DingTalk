.class public interface abstract Lcom/alibaba/android/dingtalk/live/idl/client/LiveRoomService;
.super Ljava/lang/Object;
.source "LiveRoomService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract enterRoom(Lbup;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbup;",
            "Liyv",
            "<",
            "Lbuq;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract leaveRoom(Lbuy;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuy;",
            "Liyv",
            "<",
            "Lbuz;",
            ">;)V"
        }
    .end annotation
.end method
