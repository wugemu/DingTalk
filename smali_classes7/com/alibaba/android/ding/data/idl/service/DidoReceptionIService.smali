.class public interface abstract Lcom/alibaba/android/ding/data/idl/service/DidoReceptionIService;
.super Ljava/lang/Object;
.source "DidoReceptionIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getCorpList4FaceDevice(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lbdu;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceInfoByMeetingId(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lbdk;",
            ">;>;)V"
        }
    .end annotation
.end method
