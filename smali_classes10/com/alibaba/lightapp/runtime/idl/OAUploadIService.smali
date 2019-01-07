.class public interface abstract Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;
.super Ljava/lang/Object;
.source "OAUploadIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract autoCheckConfirm(Lhio;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhio;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkIn(Lhjq;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhjq;",
            "Liyv",
            "<",
            "Lhjw;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listFastCheckSchedule(Ljava/util/List;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

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
            "Lhju;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract listFastCheckScheduleV2(Ljava/util/List;Liyv;)V
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
            "Lhhj;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract scheduleResultCheck(Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleResultCheckV2(Ljava/util/Map;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lhjx;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateUserSelfSettingForAllCorp(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadLoc(Lhjy;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhjy;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
