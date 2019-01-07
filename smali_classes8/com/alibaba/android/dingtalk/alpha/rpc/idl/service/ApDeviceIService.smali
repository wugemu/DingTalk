.class public interface abstract Lcom/alibaba/android/dingtalk/alpha/rpc/idl/service/ApDeviceIService;
.super Ljava/lang/Object;
.source "ApDeviceIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract bindAndSettingsV2(Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;",
            "Liyv",
            "<",
            "Lbsa;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getKeyAndSsidsV2(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbmy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract noticeOneKeyConnect(Lbmz;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmz;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryOrgApBindConfigV2(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbmt;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryProductConfigInfo(Ljava/lang/Integer;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbmu;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract querySimpleOrgNetSettings(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbmw;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetPass(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbna;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startWirelessNetworking(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopWirelessNetworking(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
