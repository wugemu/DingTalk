.class public interface abstract Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
.super Ljava/lang/Object;
.source "ConferenceIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelBizCall(Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallCancelModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallCancelModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelCall(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeConfHostess(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createBizCall(Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallCreateModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallCreateModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createCall(Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createVoipConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfVoipCreateResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteCallRecordList(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadDeleteModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadDeleteModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enterConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllBizCallNum(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConfQuotaInfo(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfQuotaInfoModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDirectCallPhoneNumber(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/PhoneNumberModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFavoriteUserList(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPreferBizCallNum(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallNumModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSupportedCallType(Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserBill(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UserBillModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract kickOutMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract leaveConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract muteAll(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract muteMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullCallRecordDetailModelList(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailRequestModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordDetailResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullCallRecordHeadModelList(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadRequestModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordHeadResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullConferenceStatus(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfStatusModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullMembers(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putFavoriteUserList(Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/FavorUidListModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/FavorResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putSysCallRecord(Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallRecordModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putTeleChatScore(Lcom/alibaba/android/teleconf/sdk/idl/model/ScoreModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ScoreModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendInviteSms(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendSms(Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract terminateConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unMuteAll(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unMuteMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation
.end method
