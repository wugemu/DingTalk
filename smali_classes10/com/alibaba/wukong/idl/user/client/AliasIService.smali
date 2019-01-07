.class public interface abstract Lcom/alibaba/wukong/idl/user/client/AliasIService;
.super Ljava/lang/Object;
.source "AliasIService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract getAliasModel(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAll(Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract update(Lcom/alibaba/wukong/idl/user/models/AliasModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateData(Ljava/lang/Integer;Lcom/alibaba/wukong/idl/user/models/AliasModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/AliasModel;",
            ">;)V"
        }
    .end annotation
.end method
