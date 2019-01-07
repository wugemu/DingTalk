.class public interface abstract Lcom/alibaba/wukong/idl/user/client/UserIService;
.super Ljava/lang/Object;
.source "UserIService.java"

# interfaces
.implements Lizl;


# virtual methods
.method public abstract getUserProfileByMobile(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/ProfileModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfileByOpenId(Ljava/lang/Long;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/ProfileModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfilesByMobiles(Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/ProfileModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfilesByOpenIds(Ljava/util/List;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/user/models/ProfileModel;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateUserProfile(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/idl/user/models/ProfileModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
