.class public Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfCallingActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    .line 2393
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2396
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2397
    sget v1, Leuj$l;->dt_conf_callselect_3g_warning_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2398
    sget v1, Leuj$l;->login_ok:I

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2406
    sget v1, Leuj$l;->login_cancel:I

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2413
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 4434
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4435
    :cond_0
    :goto_0
    return-void

    .line 4437
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4438
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 4439
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4447
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4448
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "toUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 128
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_SYS:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    if-ne v0, v1, :cond_5

    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, "calleeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 135
    .local v7, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v7, :cond_2

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v1, v8, v12

    if-ltz v1, :cond_2

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    .end local v7    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1182
    if-eqz v1, :cond_0

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    .line 1185
    const-string/jumbo v0, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "check sys call type"

    invoke-static {v0, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1187
    :goto_2
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual/range {v0 .. v5}, Lewl;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    goto :goto_0

    .line 1186
    :cond_4
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    goto :goto_2

    .line 144
    .end local v6    # "calleeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VOIP:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    if-ne v0, v1, :cond_6

    .line 146
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 148
    :cond_6
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 151
    :cond_7
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Net error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_8
    invoke-static {p0}, Lewb;->b(Landroid/content/Context;)V

    .line 156
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b()V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 452
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->finish()V

    .line 454
    const/4 v0, 0x0

    sget v1, Leuj$a;->conf_redpacktes_alpha_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->overridePendingTransition(II)V

    .line 456
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    .line 3368
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3369
    :cond_0
    :goto_0
    return-void

    .line 3371
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3372
    const-string/jumbo v0, "isFromService"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3373
    const-string/jumbo v0, "message"

    const-string/jumbo v4, "conf_caller"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3374
    const/4 v0, -0x1

    .line 3375
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    if-eqz v4, :cond_2

    .line 3376
    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_P2P:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v5

    if-ne v4, v5, :cond_4

    move v0, v1

    .line 3382
    :cond_2
    :goto_1
    if-gez v0, :cond_3

    .line 3383
    invoke-static {}, Lewq;->a()Lewq;

    invoke-static {p1}, Lewq;->a(Ljava/util/List;)I

    move-result v0

    .line 3385
    :cond_3
    const-string/jumbo v4, "conf_video_to_user_type"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3386
    const-string/jumbo v0, "conf_video_auto"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3387
    const-string/jumbo v0, "conf_video_3g_remind_flag"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3388
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    invoke-static {p0, p1, v3}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3378
    :cond_4
    sget-object v4, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->TYPE_VIDEO_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 3379
    goto :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    .local p1, "toUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 169
    .local v0, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_3

    .line 172
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 173
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Start voip call"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    if-eqz v0, :cond_4

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 178
    .end local v0    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b()V

    goto :goto_0

    .line 1355
    .restart local v0    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1356
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 1360
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    goto :goto_1

    .line 1358
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 2234
    invoke-static {p1}, Lcms;->a(Ljava/lang/String;)V

    .line 2235
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 2236
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b()V

    .line 60
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 60
    .line 4337
    if-nez p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4338
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Goto conf, size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4339
    :goto_0
    return-void

    .line 4341
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4342
    const-string/jumbo v1, "conversation_id"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4343
    const-string/jumbo v1, "conference_from_home"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4344
    invoke-static {p0, p1, v0}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "toUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v3, 0x0

    .line 241
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;-><init>()V

    .line 242
    .local v1, "reqModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->cid:Ljava/lang/String;

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->valueOf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    .line 252
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->calleeUidList:Ljava/util/List;

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 254
    .local v0, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 257
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->calleeUidList:Ljava/util/List;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 245
    .end local v0    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->cid:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_2
    iput-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    goto :goto_1

    .line 262
    :cond_3
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Get call type with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;->preferType:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 265
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;)V

    const-class v5, Leyo$d;

    invoke-interface {v2, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leyo$d;

    .line 264
    invoke-virtual {v3, v1, v2}, Leyc;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;Leyo$d;)V

    .line 331
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 80
    sget v0, Leuj$j;->activity_teleconf_checking_permission:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->setContentView(I)V

    .line 1095
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1096
    if-eqz v0, :cond_0

    .line 1097
    const-string/jumbo v1, "choose_user_identities"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b:Ljava/util/List;

    .line 1098
    const-string/jumbo v1, "conf_call_to_user_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;->get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d:Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeEnum;

    .line 1099
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c:Ljava/lang/String;

    .line 1104
    :cond_0
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->h:Landroid/content/BroadcastReceiver;

    .line 1114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1115
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CANCEL_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1117
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    sget v0, Leuj$i;->progress_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->e:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Ljava/util/List;)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1122
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->h:Landroid/content/BroadcastReceiver;

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 92
    return-void
.end method
