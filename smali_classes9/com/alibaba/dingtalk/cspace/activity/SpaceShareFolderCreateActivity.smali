.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
.source "SpaceShareFolderCreateActivity.java"

# interfaces
.implements Lgae;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgic;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/lang/String;

.field private C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

.field private E:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

.field private F:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

.field private G:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

.field k:Landroid/os/Handler;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ToggleButton;

.field private p:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/Button;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->z:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->A:Ljava/util/HashMap;

    .line 434
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 6
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "enterpriseChange":Z
    if-eqz p1, :cond_1

    .line 377
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 378
    const/4 v0, 0x1

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->n:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    .line 382
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->B:Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->i()V

    .line 385
    :cond_1
    if-eqz v0, :cond_2

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    .line 387
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 388
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 389
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->f()V

    .line 391
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->j()V

    .line 393
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    const/4 v1, 0x1

    .line 60
    .line 3326
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->y:Ljava/util/List;

    .line 3327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 3328
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-nez v0, :cond_0

    .line 3329
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->y:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3330
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 3331
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    sget v2, Lfzs$h;->choose_enterprise:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3332
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3342
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3343
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 60
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 60
    .line 3350
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3351
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 3352
    :goto_0
    return-void

    .line 3354
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3355
    sget v1, Lfzs$h;->space_share_change_org:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->sure:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;

    invoke-direct {v3, p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$9;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 3356
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    .line 3365
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3371
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;Lgit;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;
    .param p1, "x1"    # Lgit;

    .prologue
    .line 60
    .line 3466
    if-eqz p1, :cond_0

    .line 3467
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3468
    const-string/jumbo v1, "com.alibaba.dingtalk.space.share.create"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3469
    const-string/jumbo v1, "space_org_id"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3470
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->k()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->j()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->C:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x3a

    .line 176
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 181
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->h()V

    .line 187
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->g()V

    .line 188
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->j()V

    .line 189
    return-void
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 288
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 290
    .local v0, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->E:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-direct {v1, v0, v2, v2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;II)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->E:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->E:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    .line 295
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->h()V

    .line 297
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->g()V

    .line 298
    return-void
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->A:Ljava/util/HashMap;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    .line 303
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    .line 2027
    iput-object p0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a:Lgae;

    .line 304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->p:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4eba)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Ljava/util/List;)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->F:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->F:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->G:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    if-nez v0, :cond_1

    .line 318
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->G:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->F:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->G:Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->i()V

    return-void
.end method

.method private i()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 421
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->z:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->z:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    .local v0, "spaceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->A:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgic;

    .line 425
    .local v1, "updateInfo":Lgic;
    if-eqz v1, :cond_1

    .line 426
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->s:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lgic;->f:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lgic;->f:Ljava/lang/Long;

    .line 427
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2046
    :goto_0
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lgic;->e:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lgic;->e:Ljava/lang/Long;

    .line 428
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3046
    :cond_0
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .end local v0    # "spaceId":Ljava/lang/String;
    .end local v1    # "updateInfo":Lgic;
    :cond_1
    return-void

    .restart local v0    # "spaceId":Ljava/lang/String;
    .restart local v1    # "updateInfo":Lgic;
    :cond_2
    move-wide v2, v4

    .line 427
    goto :goto_0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 477
    const/4 v0, 0x1

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 481
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->clearFocus()V

    .line 486
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->f:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 168
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->b:I

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v5}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->e()V

    .line 173
    :cond_2
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;)V
    .locals 10
    .param p1, "memberModel"    # Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x3a

    const/4 v7, 0x1

    .line 548
    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 550
    invoke-virtual {p0, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->a(I)V

    .line 551
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->k()V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 553
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    move-object v1, p0

    move v8, v7

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V

    goto :goto_0

    .line 557
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/HashMap;I)V
    .locals 6
    .param p2, "newRole"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 228
    .local p1, "uIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Ljava/util/HashMap;I)V

    .line 229
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 233
    .local v1, "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {v1, p2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRole(I)V

    goto :goto_1

    .line 237
    .end local v1    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_3
    const/4 v0, 0x0

    .line 238
    .local v0, "display":Z
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 239
    .restart local v1    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    invoke-virtual {v1, p2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRole(I)V

    .line 241
    const/4 v0, 0x1

    goto :goto_2

    .line 244
    .end local v1    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_5
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->w:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Ljava/util/List;)V

    .line 246
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->D:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->showLoadingDialog()V

    .line 490
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    const-class v3, Lcma;

    .line 491
    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 523
    .local v0, "listener":Lcma;, "Lcma<Lgin;>;"
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->o:Landroid/widget/ToggleButton;

    .line 524
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    .line 3074
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 3075
    new-instance v7, Lgim;

    invoke-direct {v7}, Lgim;-><init>()V

    .line 3076
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lgim;->a:Ljava/lang/Long;

    .line 3077
    iput-object v4, v7, Lgim;->b:Ljava/lang/String;

    .line 3078
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v7, Lgim;->d:Ljava/lang/Boolean;

    .line 3079
    invoke-static {v5}, Lgop;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v7, Lgim;->c:Ljava/util/List;

    .line 3081
    new-instance v2, Lgop$1;

    invoke-direct {v2, v0}, Lgop$1;-><init>(Lcma;)V

    invoke-interface {v1, v7, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->create(Lgim;Liyv;)V

    .line 525
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v0, Lfzs$g;->cspace_share_folder_create:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->setContentView(I)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->space_op_create_share_folder:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    sget v0, Lfzs$f;->edt_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 101
    sget v0, Lfzs$f;->rl_save_to:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->m:Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lfzs$f;->tv_org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->n:Landroid/widget/TextView;

    .line 103
    sget v0, Lfzs$f;->tbtn_auto_create:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->o:Landroid/widget/ToggleButton;

    .line 104
    sget v0, Lfzs$f;->grid_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->p:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->p:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 106
    sget v0, Lfzs$f;->tv_user_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->q:Landroid/widget/TextView;

    .line 107
    sget v0, Lfzs$f;->rl_user_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->r:Landroid/widget/RelativeLayout;

    .line 108
    sget v0, Lfzs$f;->tv_org_capacity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->s:Landroid/widget/TextView;

    .line 109
    sget v0, Lfzs$f;->next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->t:Landroid/widget/ImageView;

    .line 111
    iput v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->b:I

    .line 1119
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->o:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->r:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1251
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1253
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->finish()V

    .line 115
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->f()V

    .line 116
    return-void

    .line 1256
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    .line 1257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->y:Ljava/util/List;

    .line 1258
    invoke-static {p0}, Lfzu;->b(Landroid/content/Context;)J

    move-result-wide v4

    .line 1259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1262
    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1263
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v7, v4, v8

    if-nez v7, :cond_3

    .line 1264
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    invoke-interface {v7, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1265
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->y:Ljava/util/List;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v7, v6, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1270
    :goto_2
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 1271
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 1272
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->z:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1267
    :cond_3
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->y:Ljava/util/List;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1277
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1279
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 1396
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1399
    new-instance v0, Lglg;

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$10;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$10;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lglg;-><init>(Landroid/app/Activity;Ljava/util/List;ZLjava/lang/String;Lglg$a;)V

    .line 1417
    invoke-virtual {v0}, Lglg;->a()V

    .line 1281
    :cond_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->t:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    move v0, v6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_3

    .line 1283
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 529
    const/4 v2, 0x1

    sget v3, Lfzs$h;->create_complete:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 530
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->actbar_button:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 531
    .local v1, "view":Landroid/view/View;
    sget v2, Lfzs$f;->btn_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->u:Landroid/widget/Button;

    .line 532
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->u:Landroid/widget/Button;

    sget v3, Lfzs$h;->create_complete:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 533
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->u:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 534
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->u:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 541
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 543
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method
