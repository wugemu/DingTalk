.class public interface abstract Lcom/alibaba/android/teleconf/sdk/idl/service/VideoConfMgrIService;
.super Ljava/lang/Object;
.source "VideoConfMgrIService.java"

# interfaces
.implements Lizl;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract controlConference(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceControlModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createConference(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getEngineIndex(Ljava/lang/Long;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract operateReservedVideoConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceOperationResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullConferenceList(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullConferenceListV2(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceQueryModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceQueryModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceListResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullMembers(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullMembersModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullMembersModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullReservedVideoConferenceList(Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferencePullModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferencePullModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ReservedVideoConferenceListResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullVideoConferenceInfo(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceGetModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceProfileModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryConferenceList(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoHistoryConferenceListResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract statusIndication(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceStatusModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceOperationResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uniDeleteVideoConferenceRecord(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceDeleteResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uniQueryVideoConferenceList(Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceQueryModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UniVideoConferenceListResultModel;",
            ">;)V"
        }
    .end annotation
.end method
