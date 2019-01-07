.class public interface abstract Lcom/alibaba/wukong/idl/relation/client/FollowIService;
.super Ljava/lang/Object;
.source "FollowIService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract follow(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getStatus(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listAll(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listBilateral(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFollowers(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFollowings(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowPageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unfollow(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/relation/models/FollowModel;",
            ">;)V"
        }
    .end annotation
.end method
