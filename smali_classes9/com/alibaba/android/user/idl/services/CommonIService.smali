.class public interface abstract Lcom/alibaba/android/user/idl/services/CommonIService;
.super Ljava/lang/Object;
.source "CommonIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getDeviceSwitch(Lcmi;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmi",
            "<",
            "Ljava/util/List",
            "<",
            "Lfoq;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getJobPositionByCode(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lfov;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getJobPositions(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lfov;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getTeamScale(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcfy;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getVerifyNumber(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
