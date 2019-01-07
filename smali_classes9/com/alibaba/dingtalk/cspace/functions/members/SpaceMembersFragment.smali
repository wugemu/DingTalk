.class public Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "SpaceMembersFragment.java"

# interfaces
.implements Lgfe$b;


# instance fields
.field protected a:Lgfe$a;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/TextView;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/lang/Runnable;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ToggleButton;

.field private p:Lgfd;

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->f:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->g:Ljava/lang/Runnable;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(IZ)V
    .locals 6
    .param p1, "selectCount"    # I
    .param p2, "allSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 209
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    if-eq v3, v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    if-nez p2, :cond_2

    if-lez p1, :cond_3

    :cond_2
    move v0, v2

    .line 213
    .local v0, "hasSelected":Z
    :goto_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget v3, Lfzs$e;->alm_cspace_delete_operate_selected:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 217
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->i:Landroid/widget/TextView;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    sget v5, Lfzs$h;->cspace_operate_delete:I

    invoke-virtual {p0, v5}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "/"

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v2}, Lgfd;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 217
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->r:Z

    if-eq v1, p2, :cond_0

    .line 220
    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->r:Z

    .line 221
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o()V

    goto :goto_0

    .end local v0    # "hasSelected":Z
    :cond_3
    move v0, v1

    .line 212
    goto :goto_1

    .line 214
    .restart local v0    # "hasSelected":Z
    :cond_4
    sget v3, Lfzs$e;->alm_cspace_delete_operate_hover:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Lgfd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method private c(Z)V
    .locals 1
    .param p1, "isSelected"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v0, p1}, Lgfd;->a(Z)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v0}, Lgfd;->notifyDataSetChanged()V

    .line 273
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o()V

    .line 274
    return-void
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f19999a    # 0.6f

    .line 374
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 375
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 377
    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 379
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private m()Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 399
    .line 4405
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    .line 5256
    iget-object v2, v2, Lgfd;->d:Ljava/util/List;

    .line 4406
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4407
    :cond_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-static {v2, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 5420
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->j:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v3}, Lgfd;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 401
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o()V

    .line 402
    return-void

    .line 4410
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 4411
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4412
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 4413
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4414
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4415
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4416
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 5420
    goto :goto_1
.end method

.method private o()V
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 427
    :cond_0
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 320
    .line 2343
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 320
    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->m()Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    .line 324
    .local v0, "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v0, 0x8

    .line 468
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 469
    if-nez p1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->j:Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v2}, Lgfd;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->j:Landroid/view/View;

    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v0, p1}, Lgfd;->b(Ljava/util/List;)V

    .line 389
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->n()V

    .line 390
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 439
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 309
    .line 1343
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 309
    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->m()Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    .line 313
    .local v0, "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_0

    .line 314
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(J)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v0, p1}, Lgfd;->c(Ljava/util/List;)V

    .line 395
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->n()V

    .line 396
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 459
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    .line 349
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    .line 3282
    iput v1, v0, Lgfd;->a:I

    .line 350
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v0}, Lgfd;->notifyDataSetChanged()V

    .line 351
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 352
    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d(Z)V

    .line 353
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o()V

    .line 354
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 361
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    .line 362
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    .line 4282
    iput v1, v0, Lgfd;->a:I

    .line 363
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v0}, Lgfd;->notifyDataSetChanged()V

    .line 364
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->h:Landroid/view/View;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 365
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    .line 4309
    iget-object v0, v0, Lgfd;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 365
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v1}, Lgfd;->a()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a(IZ)V

    .line 366
    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d(Z)V

    .line 367
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o()V

    .line 368
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 371
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 434
    :cond_0
    return-void
.end method

.method public final synthetic h()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 277
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    if-ne v1, v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v1}, Lgfe$a;->e()V

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v0}, Lgfe$a;->b()V

    .line 229
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 233
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 234
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    if-nez v5, :cond_4

    .line 235
    sget v5, Lfzs$h;->dt_common_delete:I

    invoke-interface {p1, v4, v6, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 236
    .local v0, "deleteMenuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 237
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v5}, Lgfd;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    .line 238
    invoke-interface {v5}, Lgfe$a;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    .line 237
    :cond_1
    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 248
    .end local v0    # "deleteMenuItem":Landroid/view/MenuItem;
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "deleteMenuItem":Landroid/view/MenuItem;
    :cond_3
    move v3, v4

    .line 238
    goto :goto_0

    .line 239
    .end local v0    # "deleteMenuItem":Landroid/view/MenuItem;
    :cond_4
    iget v5, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->q:I

    if-ne v5, v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v3}, Lgfd;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    const/4 v3, 0x4

    sget v5, Lfzs$h;->space_op_uncheck_all:I

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 242
    .local v2, "unSelectAllMenuItem":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 244
    .end local v2    # "unSelectAllMenuItem":Landroid/view/MenuItem;
    :cond_5
    const/4 v3, 0x3

    sget v5, Lfzs$h;->space_op_select_all:I

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 245
    .local v1, "selectAllMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->rl_member_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->b:Landroid/widget/RelativeLayout;

    .line 1108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d:Landroid/widget/ListView;

    .line 1109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->letter_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 1110
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->tv_letter_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->e:Landroid/widget/TextView;

    .line 1154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->rl_enable_group_all_user_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1155
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v2, Lfzs$f;->tv_enable_group_all_user_edit_desc:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v3, Lfzs$f;->toggle_enable_group_all_user_edit:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v0}, Lgfe$a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->o:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    :goto_0
    if-eqz p1, :cond_0

    .line 1182
    sget v0, Lfzs$g;->space_member_add:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1183
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1185
    sget v1, Lfzs$f;->ll_add_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->k:Landroid/view/View;

    .line 1186
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->k:Landroid/view/View;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$6;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    sget v1, Lfzs$f;->ll_add_members:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->m:Landroid/view/View;

    .line 1195
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$7;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    :cond_0
    new-instance v0, Lgfd;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-direct {v0, v1, v2}, Lgfd;-><init>(Landroid/content/Context;Lgfe$a;)V

    .line 1115
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V

    .line 1286
    iput-object v1, v0, Lgfd;->c:Lgfd$b;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->p:Lgfd;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1129
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->h:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->tv_right_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->i:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->rl_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->j:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->tv_add_members:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->n:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->tv_add_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->l:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->I:Landroid/view/View;

    return-object v0

    .line 1162
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 299
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v0}, Lgfe$a;->i()V

    .line 300
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 266
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 254
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->l()V

    .line 255
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v1}, Lgfe$a;->f()V

    goto :goto_0

    .line 258
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c(Z)V

    goto :goto_0

    .line 261
    :sswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->c(Z)V

    goto :goto_0

    .line 264
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->i()Z

    move-result v0

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 293
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v0}, Lgfe$a;->h()V

    .line 294
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 287
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    invoke-interface {v0}, Lgfe$a;->g()V

    .line 288
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lfzs$g;->layout_fragment_members:I

    return v0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lgfe$a;

    .line 6304
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfe$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->a:Lgfe$a;

    .line 37
    return-void
.end method
