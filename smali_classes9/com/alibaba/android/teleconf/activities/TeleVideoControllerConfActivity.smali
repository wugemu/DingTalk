.class public Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleVideoControllerConfActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Levp;

.field private c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

.field private d:I

.field private e:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private f:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

.field private g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 64
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->i:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->l()V

    return-void
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 606
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Start video"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Ljava/util/List;)V

    .line 610
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->f(Z)V

    .line 611
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->d()V

    .line 613
    :cond_0
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public final a()Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    return-object v0
.end method

.method public final a(I)V
    .locals 6
    .param p1, "errCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 303
    .line 13487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 303
    if-nez v1, :cond_1

    .line 304
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Video conference error"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_JoinFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 309
    sget v1, Leuj$l;->dt_conf_video_member_status_join_failed:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13685
    .local v0, "toast":Ljava/lang/String;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13688
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13689
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Leuj$l;->cancel:I

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 13690
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Leuj$l;->dt_common_retry:I

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 13701
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 13712
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 13713
    if-eqz v1, :cond_0

    .line 13714
    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 13715
    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 13716
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 311
    .end local v0    # "toast":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_ServerError:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 312
    sget v1, Leuj$l;->dt_conf_video_connect_error_alert:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0    # "toast":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Ljava/lang/String;Z)V

    .line 314
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v1, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c(Z)V

    goto :goto_0
.end method

.method public final a(ILjava/util/List;)V
    .locals 3
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 322
    .line 14487
    .local p2, "memberObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 322
    if-nez v1, :cond_1

    .line 323
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-eqz p2, :cond_0

    .line 327
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 328
    .local v0, "count":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v1, v2, p1, v0}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 0
    .param p1, "userWindowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "position"    # I

    .prologue
    .line 185
    return-void
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V
    .locals 9
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "startIndex"    # I
    .param p3, "uid"    # J

    .prologue
    const/4 v7, 0x1

    .line 334
    .line 15487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 334
    if-nez v3, :cond_1

    .line 335
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Activity not active"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v3, :cond_2

    if-ltz p2, :cond_2

    if-nez p1, :cond_3

    .line 339
    :cond_2
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Invalid user enter the conference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "User state changed "

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, ", action "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_JOIN_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_6

    .line 344
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, p3, v4

    if-eqz v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v2

    .line 346
    .local v2, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 347
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 348
    .local v1, "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_0

    .line 349
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 350
    .local v0, "destState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCameraMuted()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 351
    :cond_4
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_RUNNING_AUDIO:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    .line 353
    :cond_5
    iget-object v3, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 355
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v3, v4, p2, v7}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0

    .line 359
    .end local v0    # "destState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .end local v1    # "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .end local v2    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    :cond_6
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_LEAVE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_7

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_7

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_7

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_7

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_8

    .line 365
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3, p2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v1

    .line 366
    .restart local v1    # "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_0

    .line 367
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v3, v4, p2, v7}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0

    .line 369
    .end local v1    # "destUserWindowObj":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_8
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_0

    .line 370
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V
    .locals 7
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "errCode"    # I
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 267
    .line 10487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 267
    if-nez v1, :cond_1

    .line 268
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    if-eqz p1, :cond_0

    .line 274
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Action "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " fail, "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 275
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    .line 274
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_3

    .line 278
    sget v1, Leuj$l;->conf_txt_create_failed_toast:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "toast":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    move-object v0, p3

    .line 282
    :cond_2
    const-string/jumbo v1, "200"

    .line 11482
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 285
    .end local v0    # "toast":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_4

    .line 287
    invoke-virtual {p0, v6, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 288
    :cond_4
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_6

    .line 289
    sget v1, Leuj$l;->dt_conference_video_kickout_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0    # "toast":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 291
    move-object v0, p3

    .line 293
    :cond_5
    const-string/jumbo v1, "200"

    .line 12482
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v0    # "toast":Ljava/lang/String;
    :cond_6
    const/16 v1, 0x198

    if-eq p2, v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 13482
    invoke-static {v1, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V
    .locals 9
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "destObj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 212
    .line 9487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    .line 212
    if-nez v3, :cond_1

    .line 213
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Activity not active"

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local p2    # "destObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v3, :cond_0

    .line 219
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_2

    .line 220
    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 223
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "Kick off user "

    aput-object v5, v4, v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "destObj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 225
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 228
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v2, :cond_0

    .line 232
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c(I)V

    .line 233
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v3, v4, v1, v6}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_0

    .line 234
    .end local v1    # "position":I
    .end local v2    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_2
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_3

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_4

    .line 236
    :cond_3
    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 239
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "Mute/Unmute user "

    aput-object v5, v4, v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "destObj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    .restart local v1    # "position":I
    if-ltz v1, :cond_0

    .line 244
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v3, v4, v1, v6}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_0

    .line 245
    .end local v1    # "position":I
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_4
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_5

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_5

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_6

    .line 248
    :cond_5
    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 251
    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, " user "

    aput-object v5, v4, v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "destObj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 253
    .restart local v1    # "position":I
    const-wide/16 v4, -0x1

    invoke-virtual {p0, p1, v1, v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;IJ)V

    goto/16 :goto_0

    .line 254
    .end local v1    # "position":I
    .restart local p2    # "destObj":Ljava/lang/Object;
    :cond_6
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-eq v3, p1, :cond_7

    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_0

    .line 256
    :cond_7
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v3, "Muteall/unmuteall "

    aput-object v3, v5, v7

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v2

    .line 258
    .restart local v2    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 260
    .local v0, "memCount":I
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v4, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v3, v4, v7, v0}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "memCount":I
    .end local v2    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    :cond_8
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "confId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    .line 7487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onConfStarted"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "toast"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    .line 8487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 194
    if-nez v1, :cond_1

    .line 195
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v1, v2, :cond_0

    .line 201
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Conf ended"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 203
    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 204
    sget v1, Leuj$l;->dt_common_i_know:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "sureBtn":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v0    # "sureBtn":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 376
    .line 16487
    .local p1, "userPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    .line 376
    if-nez v4, :cond_1

    .line 377
    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "Activity not active"

    invoke-static {v4, v5}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v4, :cond_0

    .line 384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 385
    .local v0, "size":I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 386
    .local v1, "startPos":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 387
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v5, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v4, v5, v1, v0}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_0

    .line 389
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v3

    .line 390
    .local v3, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v3, :cond_0

    .line 391
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 392
    .local v2, "totalSize":I
    if-le v2, v1, :cond_0

    .line 393
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    sget-object v5, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    sub-int v6, v2, v1

    invoke-virtual {v4, v5, v1, v6}, Levp;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "beOffhook"    # Z

    .prologue
    .line 402
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public final b(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;I)V
    .locals 0
    .param p1, "userWindowObject"    # Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    .param p2, "position"    # I

    .prologue
    .line 190
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "beEar"    # Z

    .prologue
    .line 412
    return-void
.end method

.method public final c(Z)V
    .locals 3
    .param p1, "connected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 416
    .line 17487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 416
    if-nez v1, :cond_1

    .line 417
    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Activity not active"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    if-nez p1, :cond_0

    .line 421
    sget v1, Leuj$l;->conf_txt_video_network_disconnected:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "toast":Ljava/lang/String;
    const-string/jumbo v1, "200"

    .line 18482
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 133
    return-object p0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    .line 6487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 155
    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onConfPrepared"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_PREPARED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    invoke-virtual {v0}, Levp;->a()V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 428
    .line 18487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 428
    if-nez v0, :cond_0

    .line 429
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Activity not active"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 432
    :cond_0
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "Minimize the video window"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V

    invoke-static {p0, v0}, Leyw;->a(Landroid/app/Activity;Lcpi$a;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 448
    .line 19487
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 448
    if-nez v2, :cond_1

    .line 449
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Activity not active"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v1

    .line 456
    .local v1, "userWindowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->d:I

    if-lt v2, v3, :cond_2

    .line 457
    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Invalid add action"

    invoke-static {v2, v3}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget v2, Leuj$l;->choose_limit:I

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "toastWarning":Ljava/lang/String;
    const-string/jumbo v2, "200"

    .line 20482
    invoke-static {v2, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v0    # "toastWarning":Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->j:Z

    if-nez v2, :cond_3

    .line 464
    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->j:Z

    .line 467
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->e()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->i()V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Leuj$f;->ui_common_content_bg_color:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 74
    sget v0, Leuj$j;->activity_teleconf_video_controller_running:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->setContentView(I)V

    .line 1508
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1509
    if-eqz v0, :cond_1

    .line 1510
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1511
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1512
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1513
    if-eqz v0, :cond_0

    .line 1515
    :try_start_1
    const-string/jumbo v2, "deviceUid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1515
    iput-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->i:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1520
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2498
    :cond_1
    :goto_1
    const-string/jumbo v0, "tele_video_h"

    invoke-static {v0}, Leyu;->a(Ljava/lang/String;)V

    .line 2499
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {}, Lewq;->b()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->d:I

    .line 2500
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2501
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v0, :cond_2

    .line 2502
    new-instance v0, Lexm;

    invoke-direct {v0, p0}, Lexm;-><init>(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;)V

    .line 3491
    :cond_2
    sget v0, Leuj$i;->conf_member_list_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3492
    new-instance v2, Levp;

    invoke-direct {v2, p0, v0}, Levp;-><init>(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;Landroid/view/View;)V

    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    .line 3493
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    .line 4072
    iput-boolean v7, v0, Levp;->b:Z

    .line 3494
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->b:Levp;

    .line 4076
    iput-boolean v7, v0, Levp;->c:Z

    .line 4541
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-nez v0, :cond_8

    .line 5562
    :cond_3
    :goto_2
    return-void

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1535
    :catch_1
    move-exception v0

    .line 1536
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1522
    :cond_4
    :try_start_4
    const-string/jumbo v3, "conf_caller"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1523
    const-string/jumbo v2, "choose_user_identities"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    .line 1524
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    goto :goto_1

    .line 1525
    :cond_5
    const-string/jumbo v3, "conf_callee"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "conf_caller:conf_calling"

    .line 1526
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1527
    :cond_6
    const-string/jumbo v2, "conf_video_from_page"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->f:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    .line 1528
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    goto/16 :goto_1

    .line 1531
    :cond_7
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 4545
    :cond_8
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    sget v2, Levh;->b:I

    invoke-virtual {v0, v2}, Levm;->a(I)V

    .line 4546
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v0, v2, :cond_d

    .line 4616
    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4617
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Net is error."

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4618
    sget v0, Leuj$l;->dt_conference_no_network_exp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4619
    const-string/jumbo v2, "200"

    .line 5482
    invoke-static {v2, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4621
    invoke-virtual {p0, v1, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 4624
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->i:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    .line 4625
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid creating members"

    invoke-static {v0, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4626
    invoke-virtual {p0, v1, v6}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 4630
    :cond_b
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->i:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    .line 4631
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->i:J

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_2

    .line 4660
    :cond_c
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->l()V

    goto/16 :goto_2

    .line 4549
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v0, v2, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-ne v0, v2, :cond_3

    .line 5556
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->f:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->f:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 5560
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->f:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    .line 5665
    if-nez v2, :cond_f

    move-object v0, v1

    .line 5561
    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5564
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_2

    .line 5668
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5669
    iget-wide v4, v2, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5670
    iget-wide v4, v2, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    iget-wide v6, v2, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->callerId:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_10

    .line 5671
    iget-wide v4, v2, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->hostId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5673
    :cond_10
    iget-object v1, v2, Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;->calleeIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5675
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5676
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5678
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5680
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 105
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 107
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levm;->a(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    if-eq v0, v1, :cond_1

    .line 111
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->g:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->c(Z)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->i()V

    .line 119
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 84
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->j:Z

    .line 86
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 91
    invoke-static {}, Levm;->a()Levm;

    move-result-object v0

    invoke-virtual {v0}, Levm;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "show floating view"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->j:Z

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "dismiss floating view"

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lewt;->a()Lewt;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewt;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    goto :goto_0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 52
    check-cast p1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    .line 21138
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    .line 21139
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v0, :cond_0

    .line 21140
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->d:I

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->f:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    const/4 v5, 0x0

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(IIILcom/alibaba/android/teleconf/data/VideoConfInviteObject;Ljava/lang/String;)V

    .line 21144
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoControllerConfActivity;->c:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Z)V

    .line 52
    :cond_0
    return-void
.end method
