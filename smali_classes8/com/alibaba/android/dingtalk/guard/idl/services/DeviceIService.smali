.class public interface abstract Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;
.super Ljava/lang/Object;
.source "DeviceIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract active(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAndActive(Lbrz;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrz;",
            "Liyv",
            "<",
            "Lbsa;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkDeviceManager(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lbsb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceEndorsement(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lbsj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceEndorsementV2(Lbsf;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsf;",
            "Liyv",
            "<",
            "Lbsj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceInfo(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lbsg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceLiteAppUrl(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceSecret(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listDevices(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract provideActiveCode(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryDeviceBindStatus(Lbsc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsc;",
            "Liyv",
            "<",
            "Lbse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryDeviceBindStatusByActiveInfo(Lbsd;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsd;",
            "Liyv",
            "<",
            "Lbse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbindV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDevcieNick(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract validForBind(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
