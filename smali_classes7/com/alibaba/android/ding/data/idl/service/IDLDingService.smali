.class public interface abstract Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
.super Ljava/lang/Object;
.source "IDLDingService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addReceiversForDing(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Lbcj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract canSendDingToday(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcdj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelMeetingInvitation(Lbdl;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdl;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeDingFinishStatus(JZLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeDingStatus(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeDingStatusInBatch(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkInMeetingInvitation(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lbcd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearDeletedDingList(Liyv;)V
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

.method public abstract commentNotify(Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract confirmAllDing(Liyv;)V
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

.method public abstract confirmDing(Ljava/lang/Long;Liyv;)V
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

.method public abstract createEventsWrapper(Lbcn;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbcn;",
            "Liyv",
            "<",
            "Lbdh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteAndCancelMeetingInvitation(Lbdl;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdl;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disappearRemind(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract exportExcel(Ljava/lang/Long;Liyv;)V
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

.method public abstract focusDing(Ljava/lang/Long;ZLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Z",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCheckInCode(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Lbcc;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConfirmStatusInfo(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDingReceiverUids(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getDingReceiverUidsByRole(JIIILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getDingRelatedUids(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getDingUnreadCountModel(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lbdd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDingWrapperModel(Lbcl;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbcl;",
            "Liyv",
            "<",
            "Lbdg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGuideInfo(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getIndustryGuide(ILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUnreadCommentListCountModel(JILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Liyv",
            "<",
            "Lbei;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUnreadDingListCountModel(JILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Liyv",
            "<",
            "Lbek;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isSupportPhoneDing(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listDingCommentByType(JIZJILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZJI",
            "Liyv",
            "<",
            "Lbcg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listDingReceivers(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lbcs;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listDings(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Lbcr;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pullDingListOrderBySendAt(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lazm;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract readAllComment(Liyv;)V
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

.method public abstract recallDing(Ljava/lang/Long;Liyv;)V
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

.method public abstract remindLater(JLjava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeDingComment(JJLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendDing(Lbcx;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbcx;",
            "Liyv",
            "<",
            "Lbcj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendDingAgainV2(Lbdw;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdw;",
            "Liyv",
            "<",
            "Lbdx;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendDingByTemplateId(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Lbcj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendDingComment(Lazk;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazk;",
            "Liyv",
            "<",
            "Lbdy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDing(Lbde;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbde;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDingDeadLine(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateEventsWrapper(Lbco;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbco;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateInvitationStatus(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateInvitationStatusWithReason(Lbdm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdm;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateTaskDing(Lbdc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdc;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
