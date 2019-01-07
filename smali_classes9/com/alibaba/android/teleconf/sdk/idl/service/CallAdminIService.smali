.class public interface abstract Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;
.super Ljava/lang/Object;
.source "CallAdminIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract activityLottery(Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityReqModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityReqModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ActivityRspModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getBizCallInfo(Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallReqModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallReqModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallInfoModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCallAd(Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/AdReqModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/AdRspModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCallFeedbackInfo(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackInfoModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCallManageInfo(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCmNumber(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConfig(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigReqModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGraySwitch(Ljava/lang/Long;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/GraySwitchResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getShowPage(Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageReqModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isActivitySwitchOn(Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchReqModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ActivitySwitchRspModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putCallFeedback(Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallFeedbackModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUserCallOrg(Ljava/lang/Long;ILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "I",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;",
            ">;)V"
        }
    .end annotation
.end method
