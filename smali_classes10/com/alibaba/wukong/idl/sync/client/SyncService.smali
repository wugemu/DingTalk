.class public interface abstract Lcom/alibaba/wukong/idl/sync/client/SyncService;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract ackDiff(Lcom/alibaba/wukong/auth/ae;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/ae;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDiff(Lcom/alibaba/wukong/auth/ae;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/ae;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/auth/ag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getState(Lcom/alibaba/wukong/auth/ae;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/ae;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/auth/ae;",
            ">;)V"
        }
    .end annotation
.end method
