.class public interface abstract Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
.super Ljava/lang/Object;
.source "MiniAppIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract checkPermission4TmpVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

.method public abstract getMiniAppMetaData(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhob;",
            ">;",
            "Liyv",
            "<",
            "Lhod;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMiniAppOpenInfo(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lhoc;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getMiniAppTypeList(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getTaobaoMiniAppMetaData(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhob;",
            ">;",
            "Liyv",
            "<",
            "Lhod;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract inConversationMiniAppList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lhoe;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract makeTopInMyMiniAppList(Ljava/lang/String;ZLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract myMiniAppList(IILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lhoe;",
            ">;>;)V"
        }
    .end annotation
.end method
