.class public interface abstract Lcom/alibaba/android/user/idl/services/UserMixIService;
.super Ljava/lang/Object;
.source "UserMixIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract createUser(Ljava/util/List;Ljava/lang/Boolean;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcgd;",
            ">;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgd;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract createUsersByIdentities(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcgd;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgd;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract createUsersByIdentitiesV2(Ljava/util/List;Ljava/lang/Boolean;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcgd;",
            ">;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcgd;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfileByEmails(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Lcgl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfileByUid(Ljava/lang/Long;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcgk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfileByUids(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Lcgl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfileExtensionByMobile(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcgj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfileExtensionByStaffId(Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcgj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserProfileExtensionByUid(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcgj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchUserProfileByKeyword(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcgk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract searchUserProfileByMobile(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcgk;",
            ">;)V"
        }
    .end annotation
.end method
