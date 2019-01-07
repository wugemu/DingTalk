.class public Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "PermissionSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lgfn$b;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:J

.field private f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private m:Lgfn$a;

.field private n:Landroid/support/v7/app/AlertDialog;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ToggleButton;

.field private t:Landroid/widget/ToggleButton;

.field private u:Landroid/widget/ToggleButton;

.field private v:Landroid/widget/ListView;

.field private w:Lgfm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->a:Z

    .line 76
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b:Z

    .line 78
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->c:Z

    .line 80
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public static a(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;
    .locals 3
    .param p0, "args"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    .prologue
    .line 123
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;-><init>()V

    .line 124
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_args"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)Lgfn$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    return-object v0
.end method

.method private h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 572
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    invoke-interface {v1}, Lgfn$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 451
    .line 6483
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 451
    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5
    .param p1, "permissionSettingMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 352
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    .line 353
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    .line 5069
    iput p1, v0, Lgfm;->b:I

    .line 358
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 359
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->r:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 5305
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfzs$g;->permission_setting_header_add_member_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5307
    sget v0, Lfzs$f;->rl_add_member:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5308
    sget v0, Lfzs$f;->tv_add_member_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5309
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5310
    sget v3, Lfzs$h;->dt_cspace_co_folder_role_admin:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 5316
    :goto_0
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->r:Landroid/view/View;

    .line 361
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 370
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    invoke-interface {v0}, Lgfn$a;->d()Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->a(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)V

    .line 371
    return-void

    .line 5311
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->j:Ljava/lang/String;

    const-string/jumbo v4, "folder"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5312
    sget v3, Lfzs$h;->dt_space_add_shared_members_for_folder:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5314
    :cond_3
    sget v3, Lfzs$h;->dt_space_add_specified_member_to_view_or_edit:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 366
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->r:Landroid/view/View;

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;)V
    .locals 4
    .param p1, "linkShareAclResultObject"    # Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 376
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    if-nez p1, :cond_2

    .line 381
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 386
    :cond_2
    const-string/jumbo v2, "2"

    iget-object v3, p1, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->acl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "3"

    iget-object v3, p1, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->acl:Ljava/lang/String;

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "4"

    iget-object v3, p1, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->acl:Ljava/lang/String;

    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 389
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 390
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    if-eqz v3, :cond_5

    iget-boolean v3, p1, Lcom/alibaba/dingtalk/cspace/model/CSpaceLinkShareAclResultObject;->inherit:Z

    if-nez v3, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    .line 392
    :cond_6
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 393
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .line 4483
    .local p1, "aclMemberModels":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 342
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    invoke-virtual {v0, p1}, Lgfm;->e(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->t:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    if-nez v0, :cond_2

    .line 407
    const/4 p2, 0x0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 441
    .line 5483
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 441
    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4
    .param p1, "tipsResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 460
    .line 7483
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 460
    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(IJ)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    invoke-interface {v0}, Lgfn$a;->a()V

    .line 436
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    const-string/jumbo v0, "PermissionSettingFragment"

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 469
    .line 8483
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 469
    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    invoke-interface {v0}, Lgfn$a;->a()V

    .line 3577
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->o:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 3581
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->o:Landroid/content/BroadcastReceiver;

    .line 3607
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3608
    const-string/jumbo v1, "com.alibaba.dingtalk.space.link_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3609
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3610
    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3611
    const-string/jumbo v1, "com.alibaba.dingtalk.space.update_data"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 332
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x1

    .line 494
    if-nez p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v4, Lfzs$f;->rl_add_member:I

    if-ne v1, v4, :cond_16

    .line 499
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->g:Z

    if-eqz v1, :cond_2

    .line 500
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v4, "space_alidoc_setting_addpermissions_click"

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 503
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->g:Z

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h:I

    const-string/jumbo v5, "0"

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    invoke-interface {v6}, Lgfn$a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 9288
    new-instance v0, Lgfl;

    invoke-direct {v0}, Lgfl;-><init>()V

    .line 9291
    if-nez v1, :cond_7

    .line 9292
    invoke-static {v4}, Lgqu;->h(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9293
    if-nez v5, :cond_3

    .line 9294
    iput v2, v0, Lgfl;->a:I

    .line 9295
    iput v2, v0, Lgfl;->b:I

    .line 9297
    :cond_3
    iput v2, v0, Lgfl;->c:I

    .line 504
    .local v0, "addMemberScope":Lgfl;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->n:Landroid/support/v7/app/AlertDialog;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->e:J

    .line 10169
    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 504
    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->n:Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 9298
    .end local v0    # "addMemberScope":Lgfl;
    :cond_6
    invoke-static {v4}, Lgqu;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9299
    iput v2, v0, Lgfl;->a:I

    .line 9300
    iput v10, v0, Lgfl;->b:I

    .line 9301
    iput v10, v0, Lgfl;->c:I

    goto :goto_1

    .line 9307
    :cond_7
    invoke-static {v4}, Lgqu;->e(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9308
    iput v2, v0, Lgfl;->a:I

    .line 9309
    iput v10, v0, Lgfl;->b:I

    .line 9310
    iput v10, v0, Lgfl;->c:I

    goto :goto_1

    .line 9311
    :cond_8
    invoke-static {v4}, Lgqu;->f(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9312
    iput v3, v0, Lgfl;->a:I

    .line 9313
    iput v3, v0, Lgfl;->b:I

    .line 9314
    iput v10, v0, Lgfl;->c:I

    goto :goto_1

    .line 9315
    :cond_9
    invoke-static {v4}, Lgqu;->c(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9316
    iput v3, v0, Lgfl;->a:I

    .line 9317
    iput v3, v0, Lgfl;->b:I

    .line 9318
    iput v10, v0, Lgfl;->c:I

    goto :goto_1

    .line 9319
    :cond_a
    invoke-static {v4}, Lgqu;->h(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 9320
    if-nez v5, :cond_b

    .line 9321
    iput v2, v0, Lgfl;->a:I

    .line 9322
    iput v2, v0, Lgfl;->b:I

    .line 9324
    :cond_b
    iput v2, v0, Lgfl;->c:I

    goto :goto_1

    .line 9325
    :cond_c
    invoke-static {v4}, Lgqu;->d(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9326
    iput v2, v0, Lgfl;->a:I

    .line 9327
    iput v10, v0, Lgfl;->b:I

    .line 9328
    iput v10, v0, Lgfl;->c:I

    goto :goto_1

    .line 9329
    :cond_d
    invoke-static {v4}, Lgqu;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9330
    iput v3, v0, Lgfl;->a:I

    .line 9331
    iput v3, v0, Lgfl;->b:I

    .line 9332
    iput v10, v0, Lgfl;->c:I

    goto :goto_1

    .line 10173
    .restart local v0    # "addMemberScope":Lgfl;
    :cond_e
    if-eqz v0, :cond_f

    iget v8, v0, Lgfl;->a:I

    if-nez v8, :cond_10

    iget v8, v0, Lgfl;->b:I

    if-nez v8, :cond_10

    iget v8, v0, Lgfl;->c:I

    if-eqz v8, :cond_10

    .line 10179
    :cond_f
    if-eqz v5, :cond_5

    .line 10180
    iget v2, v0, Lgfl;->c:I

    invoke-interface {v5, v10, v2}, Lgfn$a;->a(II)V

    goto/16 :goto_2

    .line 10185
    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_5

    .line 10189
    :cond_11
    const-wide/16 v8, 0x5209

    cmp-long v6, v6, v8

    if-eqz v6, :cond_12

    iget v6, v0, Lgfl;->a:I

    if-nez v6, :cond_14

    :cond_12
    iget v6, v0, Lgfl;->b:I

    if-eqz v6, :cond_14

    iget v6, v0, Lgfl;->c:I

    if-eqz v6, :cond_14

    .line 10194
    if-nez v1, :cond_13

    .line 10195
    invoke-static {v4, v5, v0, v3}, Lgfq;->a(Landroid/app/Activity;Lgfn$a;Lgfl;Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 10214
    :cond_13
    :goto_3
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 10197
    :cond_14
    iget v3, v0, Lgfl;->a:I

    if-eqz v3, :cond_15

    iget v3, v0, Lgfl;->b:I

    if-eqz v3, :cond_15

    iget v3, v0, Lgfl;->c:I

    if-eqz v3, :cond_15

    .line 10202
    if-nez v1, :cond_13

    .line 10203
    invoke-static {v4, v5, v0, v2}, Lgfq;->a(Landroid/app/Activity;Lgfn$a;Lgfl;Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    goto :goto_3

    .line 10207
    :cond_15
    if-eqz v5, :cond_5

    .line 10208
    iget v2, v0, Lgfl;->c:I

    invoke-interface {v5, v10, v2}, Lgfn$a;->a(II)V

    goto/16 :goto_2

    .line 505
    .end local v0    # "addMemberScope":Lgfl;
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v4, Lfzs$f;->toggle_safe_mode:I

    if-ne v1, v4, :cond_18

    .line 507
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Lgfn$a;->b(Z)V

    goto/16 :goto_0

    :cond_17
    move v1, v3

    goto :goto_4

    .line 508
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lfzs$f;->toggle_org_member_browse:I

    if-ne v1, v2, :cond_1a

    .line 510
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->t:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 511
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    invoke-interface {v1}, Lgfn$a;->b()V

    goto/16 :goto_0

    .line 513
    :cond_19
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    invoke-interface {v1}, Lgfn$a;->c()V

    goto/16 :goto_0

    .line 515
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lfzs$f;->toggle_link_setting:I

    if-ne v1, v2, :cond_0

    .line 517
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->s:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 518
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    const-string/jumbo v2, "2"

    invoke-interface {v1, v2}, Lgfn$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11483
    :cond_1b
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 10527
    if-eqz v1, :cond_0

    .line 10531
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10532
    sget v2, Lfzs$h;->dt_space_close_link_confirm_dialog_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10533
    sget v2, Lfzs$h;->dt_space_close_link_confirm_dialog_content:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 10534
    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10545
    sget v2, Lfzs$h;->dt_space_share_link_setting_option_close:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10554
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "intent_key_args"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h:I

    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->i:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->k:I

    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-static {v0}, Lgfq;->a(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->g:Z

    .line 151
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    const-string/jumbo v3, "folder"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->a:Z

    .line 154
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    const-string/jumbo v3, "folder"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b:Z

    .line 158
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->c:Z

    .line 162
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    .line 163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget-wide v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->e:J

    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->f:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->j:Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->l:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 151
    goto :goto_1

    :cond_3
    move v1, v2

    .line 154
    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    sget v7, Lfzs$g;->fragment_space_permission_setting_layout:I

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 178
    .local v6, "view":Landroid/view/View;
    sget v7, Lfzs$f;->list_view:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    .line 181
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    .line 1251
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v9, Lfzs$g;->permission_setting_header_dentry_name_layout:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1253
    sget v7, Lfzs$f;->tv_dentry_name:I

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->q:Landroid/widget/TextView;

    .line 1254
    sget v7, Lfzs$f;->iv_dentry_icon:I

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->p:Landroid/widget/ImageView;

    .line 1255
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->q:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->g:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->i:Ljava/lang/String;

    invoke-static {v7}, Lgpx;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->p:Landroid/widget/ImageView;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->k:I

    if-gtz v7, :cond_4

    sget v7, Lfzs$e;->file_unkonwn:I

    :goto_1
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    invoke-virtual {v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 183
    const/4 v5, 0x0

    .line 192
    .local v5, "showDivider":Z
    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->a:Z

    if-eqz v7, :cond_0

    .line 193
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    .line 1295
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v9, Lfzs$g;->permission_setting_header_safe_mode_layout:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1297
    sget v7, Lfzs$f;->toggle_safe_mode:I

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    .line 1298
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v7, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 194
    const/4 v5, 0x1

    .line 198
    :cond_0
    iget-boolean v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->b:Z

    if-eqz v7, :cond_1

    .line 199
    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    .line 2263
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v9, Lfzs$g;->permission_setting_header_orgmember_layout:I

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 2265
    sget v7, Lfzs$f;->toggle_org_member_browse:I

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->t:Landroid/widget/ToggleButton;

    .line 2266
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->t:Landroid/widget/ToggleButton;

    invoke-virtual {v7, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 200
    const/4 v5, 0x1

    .line 204
    :cond_1
    if-eqz v5, :cond_2

    .line 205
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 206
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 207
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 208
    .local v3, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lfzs$c;->ui_common_level2_line_bg_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 211
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 220
    .end local v3    # "ll":Landroid/widget/LinearLayout;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 221
    .local v2, "footerLp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/high16 v8, 0x42900000    # 72.0f

    invoke-static {v7, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    iput v7, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 222
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, "footerLl":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lfzs$c;->cspace_white:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 226
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 229
    new-instance v7, Lgfm;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lgfm;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    .line 230
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    .line 3065
    iput-object v8, v7, Lgfm;->a:Lgfn$a;

    .line 231
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    iget v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->d:I

    .line 3069
    iput v8, v7, Lgfm;->b:I

    .line 232
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->h()Z

    move-result v8

    .line 3073
    iput-boolean v8, v7, Lgfm;->c:Z

    .line 233
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    iget-wide v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->e:J

    .line 3077
    iput-wide v8, v7, Lgfm;->d:J

    .line 234
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    iget-boolean v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->g:Z

    .line 3081
    iput-boolean v8, v7, Lgfm;->e:Z

    .line 235
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->v:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->w:Lgfm;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    sget v7, Lfzs$f;->ding_secretary_service:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "dingSecretaryServiceIf":Landroid/view/View;
    new-instance v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$1;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-object v6

    .line 1255
    .end local v0    # "dingSecretaryServiceIf":Landroid/view/View;
    .end local v1    # "footerLl":Landroid/widget/LinearLayout;
    .end local v2    # "footerLp":Landroid/widget/AbsListView$LayoutParams;
    .end local v5    # "showDivider":Z
    :cond_3
    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 1256
    :cond_4
    iget v7, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->k:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 559
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->o:Landroid/content/BroadcastReceiver;

    .line 563
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 564
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lgfn$a;

    .line 12336
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfn$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->m:Lgfn$a;

    .line 68
    return-void
.end method
