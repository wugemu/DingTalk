.class public interface abstract Lcom/alibaba/android/teleconf/sdk/idl/service/AppointmentIService;
.super Ljava/lang/Object;
.source "AppointmentIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract acceptAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfAcceptResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCancelModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCancelModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCancelResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAppointmentStatistic(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfStatisticModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract joinAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfJoinResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullAppointmentInfo(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfGetModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfProfileModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullAppointmentList(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfPullModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfListResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refuseAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfRefuseResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAppointment(Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfUpdateResultModel;",
            ">;)V"
        }
    .end annotation
.end method
