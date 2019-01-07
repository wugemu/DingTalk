.class final Lexm$36;
.super Ljava/lang/Object;
.source "VideoConfPresenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 2600
    iput-object p1, p0, Lexm$36;->a:Lexm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2600
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;

    .line 3603
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;->userList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3604
    :cond_0
    return-void

    .line 3606
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 3610
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberListResultModel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberInfoModel;

    .line 3611
    if-eqz v0, :cond_3

    .line 3614
    const-wide/16 v2, 0x0

    .line 3615
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberInfoModel;->uid:Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 3616
    iget-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberInfoModel;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3618
    :cond_4
    iget-object v4, p0, Lexm$36;->a:Lexm;

    invoke-static {v4, v2, v3}, Lexm;->b(Lexm;J)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v2

    .line 3619
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_3

    .line 3620
    iget-object v3, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 3621
    if-eqz v3, :cond_3

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 3624
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Pull User "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 3625
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", status "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberInfoModel;->status:Ljava/lang/Integer;

    .line 3626
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3624
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    iget-object v4, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberInfoModel;->status:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 3629
    iget-object v0, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceMemberInfoModel;->status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserStateByStatus(I)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v0

    .line 3630
    iget-object v4, p0, Lexm$36;->a:Lexm;

    invoke-static {v4}, Lexm;->j(Lexm;)I

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_SUPPORT:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v4, :cond_8

    .line 3635
    :cond_5
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_BUSY:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v2, :cond_6

    .line 3636
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Leuj$l;->dt_conference_voip_remote_is_reject_title:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3642
    :goto_1
    iget-object v2, p0, Lexm$36;->a:Lexm;

    invoke-static {v2, v0}, Lexm;->a(Lexm;Ljava/lang/String;)Ljava/lang/String;

    .line 3643
    iget-object v0, p0, Lexm$36;->a:Lexm;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lexm;->c(Z)V

    goto/16 :goto_0

    .line 3637
    :cond_6
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_NO_PERMISSION:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v2, :cond_7

    .line 3638
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Leuj$l;->dt_conference_voip_remote_is_blacked_title_v2:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3640
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v2, Leuj$l;->dt_conf_video_callee_version_unsupport:I

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3646
    :cond_8
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v4

    .line 3647
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v4, v5, :cond_9

    invoke-static {v4, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v0, v5, :cond_b

    .line 3650
    :cond_a
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Invalid state "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x2

    const-string/jumbo v5, " <-- "

    aput-object v5, v3, v0

    const/4 v0, 0x3

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3653
    :cond_b
    if-eq v4, v0, :cond_3

    .line 3654
    invoke-static {v4, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v5

    .line 3655
    if-eqz v5, :cond_c

    .line 3656
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3657
    iget-object v4, v2, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 3660
    :cond_c
    iget-object v0, p0, Lexm$36;->a:Lexm;

    invoke-static {v0}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3661
    iget-object v0, p0, Lexm$36;->a:Lexm;

    invoke-static {v0, v2}, Lexm;->a(Lexm;Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;)I

    move-result v0

    .line 3662
    iget-object v2, p0, Lexm$36;->a:Lexm;

    invoke-static {v2}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-interface {v2, v4, v0, v6, v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2673
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Pull member status "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    return-void
.end method
