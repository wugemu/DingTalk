.class public interface abstract Lcom/alibaba/android/user/idl/services/ChannelIService;
.super Ljava/lang/Object;
.source "ChannelIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract acceptChannelApply(JLiyv;)V
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

.method public abstract getChannelApplyList(JILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Liyv",
            "<",
            "Lfoe;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getChannelInviteInfo(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Lfoh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getChannelInviteInfoByCorpId(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lfoh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getChannelOrgPageShortInfo(Lfoi;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfoi;",
            "Liyv",
            "<",
            "Lfoj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getChannelOrgPageShortInfoList(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfoi;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lfoj;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getOrgPageWithTokenInProfile(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lfqv;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isChannelOpen(JLiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listOrgPageOfUserJoinedOrg(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lfox;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract rejectChannelApply(JILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeChannelApply(JLiyv;)V
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

.method public abstract sendChannelRequest(JLjava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
