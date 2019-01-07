.class public interface abstract Lcom/alibaba/wukong/im/FollowService;
.super Ljava/lang/Object;
.source "FollowService.java"


# virtual methods
.method public abstract addFollowListener(Lcom/alibaba/wukong/im/FollowListener;)V
.end method

.method public abstract fetchAllFollows(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract follow(JJLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getStatus(JJLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFollowings(IJILcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listFollows(IJILcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract removeFollowListener(Lcom/alibaba/wukong/im/FollowListener;)V
.end method

.method public abstract unfollow(JJLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Follow;",
            ">;)V"
        }
    .end annotation
.end method
