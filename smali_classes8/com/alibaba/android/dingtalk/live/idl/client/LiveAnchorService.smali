.class public interface abstract Lcom/alibaba/android/dingtalk/live/idl/client/LiveAnchorService;
.super Ljava/lang/Object;
.source "LiveAnchorService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addAnchors(Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbtz;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lbtz;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract delAnchors(Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

.method public abstract listAnchors(Lbva;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbva;",
            "Liyv",
            "<",
            "Lbvb;",
            ">;)V"
        }
    .end annotation
.end method
