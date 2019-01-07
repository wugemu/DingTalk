.class public Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "LabelGroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private c:J

.field private d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

.field private e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

.field private f:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

.field private g:Z

.field private h:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

.field private j:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->g:Z

    .line 351
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;)Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->j:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    .line 2306
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iput p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->color:I

    .line 2307
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2308
    :cond_0
    return-void

    .line 2310
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 2311
    if-eqz v0, :cond_2

    .line 2314
    iput p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    .line 4422
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4423
    sget v1, Lezg$l;->dt_external_contact_delete_one_label_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$7;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;I)V

    .line 4424
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    .line 4434
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 59
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 59
    .line 2439
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2440
    sget v1, Lezg$l;->dt_external_contact_delete_label_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$8;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    .line 2441
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    const/4 v2, 0x0

    .line 2448
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 59
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->h:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 59
    .line 3331
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_key_delete_label_group"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3332
    const-string/jumbo v1, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3333
    const-string/jumbo v1, "intent_key_label_group_id"

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3335
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3336
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->finish()V

    .line 59
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 59
    .line 4320
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_key_save_label_group"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4321
    const-string/jumbo v1, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4322
    const-string/jumbo v1, "intent_key_label_group"

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4323
    const-string/jumbo v1, "intent_key_label_group_is_add_mode"

    iget-boolean v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4325
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 4326
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->finish()V

    .line 59
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 59
    .line 5191
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->showLoadingDialog()V

    .line 5192
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$5;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5219
    invoke-static {}, Lfar;->a()Lfar;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->c:J

    iget-object v4, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    .line 6109
    new-instance v6, Lfar$2;

    invoke-direct {v6, v1, v0}, Lfar$2;-><init>(Lfar;Lcma;)V

    .line 6116
    const-class v1, Lcom/alibaba/android/user/idl/services/LabelIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/LabelIService;

    .line 6117
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    if-nez v1, :cond_2

    .line 6118
    :cond_0
    if-eqz v0, :cond_1

    .line 6119
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Invalid params"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6121
    :cond_1
    :goto_0
    return-void

    .line 6123
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2, v6}, Lcom/alibaba/android/user/idl/services/LabelIService;->deleteLabelGroup(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Lezg$j;->activity_label_group_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->setContentView(I)V

    .line 1092
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->c:J

    .line 1093
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_label_group"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    if-nez v0, :cond_0

    .line 1095
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 1096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->g:Z

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    .line 1105
    :cond_1
    sget v0, Lezg$l;->dt_external_contact_label_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1108
    sget v0, Lezg$h;->te_group_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    .line 1109
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->setEditText(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->setEditTextMaxLen(I)V

    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$1;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->setEditOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1121
    sget v0, Lezg$h;->color_select_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->f:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->f:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$2;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->setColorSelectListener(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;)V

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->f:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->color:I

    invoke-static {p0, v2}, Lfnn;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->setCurrentIndex(I)V

    .line 1131
    sget v0, Lezg$h;->ll_delete_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1132
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->g:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    new-instance v0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$3;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    sget v0, Lezg$h;->list_label:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1169
    new-instance v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;-><init>(Landroid/content/Context;)V

    .line 1170
    sget v3, Lezg$g;->icon_green_add:I

    invoke-virtual {v2, v3, v6, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 1171
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setLeftImageSize(Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;)V

    .line 1172
    sget v3, Lezg$l;->dt_external_contact_add_label:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setTitle(Ljava/lang/String;)V

    .line 1173
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->C2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(II)V

    .line 1174
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->a(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1175
    sget-object v3, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->b(ILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$DividerAlign;)V

    .line 1177
    new-instance v3, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$4;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1143
    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    iput-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->h:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    .line 1144
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->h:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1145
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 88
    return-void

    :cond_2
    move v0, v1

    .line 1132
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    sget v1, Lezg$l;->save:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 152
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1341
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1344
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 1345
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1346
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1347
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E1EditCell;->getEditText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1229
    :cond_2
    sget v0, Lezg$l;->dt_external_contact_label_group_name_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    if-eqz v0, :cond_5

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;->getEditText()Ljava/lang/String;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_4

    .line 1237
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1239
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->j:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    if-eqz v2, :cond_5

    .line 1240
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->j:Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    .line 1246
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 1248
    :goto_1
    if-ge v2, v3, :cond_7

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 1250
    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1251
    const/4 v1, 0x1

    .line 1252
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v0, v1

    .line 1248
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1255
    :cond_7
    if-nez v1, :cond_8

    .line 1256
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->h:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->notifyDataSetChanged()V

    .line 1257
    sget v0, Lezg$l;->dt_external_contact_add_label_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1261
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->h:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->notifyDataSetChanged()V

    .line 1263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C8E2EditCell;

    .line 1266
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->showLoadingDialog()V

    .line 1267
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$6;-><init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1301
    invoke-static {}, Lfar;->a()Lfar;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->c:J

    iget-object v4, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 2129
    new-instance v5, Lfar$3;

    invoke-direct {v5, v1, v0}, Lfar$3;-><init>(Lfar;Lcma;)V

    .line 2136
    const-class v1, Lcom/alibaba/android/user/idl/services/LabelIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/LabelIService;

    .line 2137
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_9

    if-eqz v4, :cond_9

    if-nez v1, :cond_a

    .line 2138
    :cond_9
    if-eqz v0, :cond_0

    .line 2139
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Invalid params"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2143
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;)Lceb;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/alibaba/android/user/idl/services/LabelIService;->saveOrUpdateLabelGroup(Ljava/lang/Long;Ljava/lang/Integer;Lceb;Liyv;)V

    goto/16 :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
