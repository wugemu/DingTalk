.class public Lcom/alibaba/android/ding/activity/DingReceiverActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "DingReceiverActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Layi;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field private i:Lbhu;

.field private j:Lbhu$a;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Z

.field private n:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/AbsListView$OnScrollListener;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "431020"

    sput-object v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->k:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$1;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->o:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;I)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    .line 5269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->m:Z

    .line 5270
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->g:J

    invoke-direct {p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b()I

    move-result v4

    const/16 v6, 0x14

    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$7;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    const-class v5, Lcma;

    .line 5271
    invoke-static {v0, v5, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    move v5, p1

    .line 5270
    invoke-virtual/range {v1 .. v7}, Lbbp;->a(JIIILcma;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/lang/CharSequence;Ljava/lang/Long;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/Long;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 49
    .line 10385
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10386
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10387
    sget v1, Laxp$i;->ding_ignore_vip:I

    new-instance v2, Lcom/alibaba/android/ding/activity/DingReceiverActivity$10;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$10;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/lang/Long;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10393
    sget v1, Laxp$i;->cancel:I

    new-instance v2, Lcom/alibaba/android/ding/activity/DingReceiverActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$2;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10398
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/lang/Long;Ljava/util/List;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 49
    .line 6355
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 7343
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7344
    if-eqz p2, :cond_1

    .line 7345
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 7346
    if-eqz v0, :cond_0

    .line 7347
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6355
    :cond_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$9;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/lang/Long;Ljava/util/List;)V

    const-class v4, Lcma;

    .line 6356
    invoke-static {v0, v4, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6355
    invoke-virtual {v1, p1, v2, v3, v0}, Lbbp;->a(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Lcma;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    const/4 v5, 0x0

    .line 49
    .line 9405
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9411
    :cond_0
    :goto_0
    return-void

    .line 9408
    :cond_1
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    .line 10155
    iget-object v0, v0, Lbbi;->a:Lazb;

    iget v3, v0, Lazb;->g:I

    .line 9409
    if-nez v3, :cond_2

    .line 9410
    sget v0, Laxp$i;->dt_ding_quota_not_enough:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 9413
    :cond_2
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbbi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 9414
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget v0, Laxp$i;->ding_add_task_cc_user:I

    .line 9415
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string/jumbo v2, "identifier_receiver_activity_add_receiver"

    sget-object v8, Lbji;->c:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move-object v0, p0

    move v6, v5

    move-object v7, p1

    .line 9414
    invoke-static/range {v0 .. v8}, Lbjv;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/util/ArrayList;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)V

    goto :goto_0

    .line 9415
    :cond_3
    sget v0, Laxp$i;->ding_create_select_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    .line 5292
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->i:Lbhu;

    if-eqz v0, :cond_0

    .line 5293
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->i:Lbhu;

    .line 6099
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhu;->a:Z

    .line 5295
    :cond_0
    new-instance v0, Lbhu;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->j:Lbhu$a;

    invoke-direct {v0, p1, v1}, Lbhu;-><init>(Ljava/util/List;Lbhu$a;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->i:Lbhu;

    .line 5296
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->i:Lbhu;

    invoke-virtual {v0}, Lbhu;->a()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/activity/DingReceiverActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->m:Z

    return v0
.end method

.method private b()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 253
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->getValue()I

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 256
    :cond_0
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    if-ne v0, v2, :cond_1

    .line 258
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->getValue()I

    move-result v0

    goto :goto_0

    .line 259
    :cond_1
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 261
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->getValue()I

    move-result v0

    goto :goto_0

    .line 263
    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingReceiverActivity] getRole, unknown title type."

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PRINCIPAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Layi;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->e:Layi;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 49
    .line 8310
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    .line 8311
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8312
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->n:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O(Lckm$a;)V

    :cond_0
    :goto_0
    return-void

    .line 8314
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->n:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->u(Lckm$a;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/activity/DingReceiverActivity;

    .prologue
    .line 49
    .line 9300
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9301
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxp$i;->dt_task_owner_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 9303
    :goto_0
    return-void

    .line 9302
    :cond_0
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9303
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxp$i;->dt_task_participant_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 9305
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Laxp$i;->dt_ding_receiver_detail:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v0, Laxp$g;->ding_activity_ding_receiver_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->setContentView(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ding_receiver_ding_id"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->f:Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->f:Ljava/lang/String;

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1145
    iput-wide v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->g:J

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_ding_receiver_title_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    .line 2330
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->actbar_textview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2331
    sget v0, Laxp$f;->tv_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c:Landroid/widget/TextView;

    .line 2332
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c:Landroid/widget/TextView;

    sget v2, Laxp$i;->dt_ding_receiver_menu_add:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2333
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/activity/DingReceiverActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$8;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2150
    iput-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b:Landroid/view/View;

    .line 2151
    sget v0, Laxp$f;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->d:Landroid/widget/ListView;

    .line 2152
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->o:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3156
    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    const-class v1, Lbhu$a;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhu$a;

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->j:Lbhu$a;

    .line 3172
    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->n:Lckm$a;

    .line 3182
    new-instance v0, Layi;

    invoke-direct {v0, p0}, Layi;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->e:Layi;

    .line 3183
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->e:Layi;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3184
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->supportInvalidateOptionsMenu()V

    .line 3218
    iget-wide v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->g:J

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3219
    const-string/jumbo v0, "[DingReceiverPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "dingId is invalidate"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->finish()V

    .line 4189
    :goto_0
    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->p:Landroid/content/BroadcastReceiver;

    .line 4210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4211
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4212
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4213
    const-string/jumbo v1, "com.workapp.ding.choose.myself"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4214
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 103
    return-void

    .line 3223
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/activity/DingReceiverActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingReceiverActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3249
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v4, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 131
    :goto_0
    return v2

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 112
    .local v0, "canAddReceiver":Z
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    .line 125
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 126
    const-string/jumbo v4, ""

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 127
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->b:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 128
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 131
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    .line 115
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 118
    invoke-static {v4}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    if-eq v4, v5, :cond_4

    move v0, v2

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->p:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 4320
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_1

    .line 4321
    iget v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4322
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->n:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->P(Lckm$a;)V

    .line 140
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 141
    return-void

    .line 4324
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->h:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingReceiverActivity;->n:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->v(Lckm$a;)V

    goto :goto_0
.end method
