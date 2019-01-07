.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;
.super Ljava/lang/Object;
.source "ChannelIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract acceptChannelRequest(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelChannelFollow(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getChannelRequest(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ldqp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listChannelOfUserJoinedOrg(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lddm;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract removeChannelFollow(JJLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendChannelRequest(JLjava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
