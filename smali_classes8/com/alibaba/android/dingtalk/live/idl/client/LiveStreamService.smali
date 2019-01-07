.class public interface abstract Lcom/alibaba/android/dingtalk/live/idl/client/LiveStreamService;
.super Ljava/lang/Object;
.source "LiveStreamService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract checkLivePermission(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbvl;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract checkLivePermissionV2(Lbul;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbul;",
            "Liyv",
            "<",
            "Lbum;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLiveDetail(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbvk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listSharedCids(Lbvi;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvi;",
            "Liyv",
            "<",
            "Lbvj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setGroupLiveSwitch(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shareTo(Lbvu;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvu;",
            "Liyv",
            "<",
            "Lbvv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startLive(Lbvw;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvw;",
            "Liyv",
            "<",
            "Lbvx;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopLive(Lbwa;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbwa;",
            "Liyv",
            "<",
            "Lbwb;",
            ">;)V"
        }
    .end annotation
.end method
