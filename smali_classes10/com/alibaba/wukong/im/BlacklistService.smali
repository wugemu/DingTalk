.class public interface abstract Lcom/alibaba/wukong/im/BlacklistService;
.super Ljava/lang/Object;
.source "BlacklistService.java"


# virtual methods
.method public abstract addBlacklistListener(Lcom/alibaba/wukong/im/BlacklistListener;)V
.end method

.method public abstract addToBlacklist(JLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist(IILcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract fetchAllBlacklist(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getBlacklistStatus(JLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeBlacklistListener(Lcom/alibaba/wukong/im/BlacklistListener;)V
.end method

.method public abstract removeFromBlacklist(JLcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Blacklist;",
            ">;)V"
        }
    .end annotation
.end method
