.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/ImAttractIService;
.super Ljava/lang/Object;
.source "ImAttractIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract attractInConversation(Ldqk;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldqk;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract attractInNewFriendScene(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ldts;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract attractInNewMemberScene(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ldts;",
            ">;)V"
        }
    .end annotation
.end method
