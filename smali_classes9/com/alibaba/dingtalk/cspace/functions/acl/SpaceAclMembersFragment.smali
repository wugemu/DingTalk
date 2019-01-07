.class public Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;
.source "SpaceAclMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lgdj$b;


# instance fields
.field a:Landroid/view/View;

.field b:I

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/ViewStub;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ToggleButton;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lgdk;

.field private o:Lgdj$a;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    return-void
.end method

.method public static a(ZZZZ)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;
    .locals 3
    .param p0, "canChooseUsers"    # Z
    .param p1, "canChooseDept"    # Z
    .param p2, "canChooseConversation"    # Z
    .param p3, "canEdit"    # Z

    .prologue
    .line 99
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;-><init>()V

    .line 100
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key_args_can_choose_users"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string/jumbo v2, "key_args_can_choose_dept"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string/jumbo v2, "key_args_can_choose_conversation"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string/jumbo v2, "key_args_can_edit"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->g()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;)Lgdj$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    return-object v0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f19999a    # 0.6f

    .line 622
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 623
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 624
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 626
    if-eqz p1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 628
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 629
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 635
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 632
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 633
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v0

    invoke-virtual {v0}, Lgdm;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    sget v1, Lfzs$e;->alm_cspace_delete_operate_hover:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 435
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    new-array v1, v6, [Ljava/lang/String;

    sget v2, Lfzs$h;->cspace_operate_delete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "0/"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v2}, Lgdj$a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    sget v1, Lfzs$e;->alm_cspace_delete_operate_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 438
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sget v2, Lfzs$h;->cspace_operate_delete:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 440
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v2

    invoke-virtual {v2}, Lgdm;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "/"

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    .line 441
    invoke-interface {v2}, Lgdj$a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 439
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 307
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 308
    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string/jumbo v0, "20170712"

    return-object v0
.end method

.method public final a(I)V
    .locals 4
    .param p1, "tipsResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 312
    .line 4341
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 312
    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p1, v2, v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(IJ)V

    goto :goto_0
.end method

.method a(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 524
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    .line 526
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    if-ne v3, v5, :cond_3

    .line 527
    invoke-direct {p0, v6}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b(Z)V

    .line 532
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 533
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 535
    .local v1, "tempView":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgdi;

    if-eqz v3, :cond_2

    .line 539
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgdi;

    .line 541
    .local v2, "viewHolder":Lgdi;
    if-nez p1, :cond_4

    .line 542
    iget-object v3, v2, Lgdi;->a:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 546
    :cond_1
    :goto_2
    iget-boolean v3, v2, Lgdi;->g:Z

    if-eqz v3, :cond_2

    .line 547
    iget-object v3, v2, Lgdi;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 532
    .end local v2    # "viewHolder":Lgdi;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    .end local v0    # "i":I
    .end local v1    # "tempView":Landroid/view/View;
    :cond_3
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    if-nez v3, :cond_0

    .line 529
    invoke-direct {p0, v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b(Z)V

    goto :goto_0

    .line 543
    .restart local v0    # "i":I
    .restart local v1    # "tempView":Landroid/view/View;
    .restart local v2    # "viewHolder":Lgdi;
    :cond_4
    if-ne p1, v5, :cond_1

    .line 544
    iget-object v3, v2, Lgdi;->a:Landroid/widget/CheckBox;

    invoke-static {v3, v6}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 551
    .end local v1    # "tempView":Landroid/view/View;
    .end local v2    # "viewHolder":Lgdi;
    :cond_5
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    .line 11057
    iput p1, v3, Lgdk;->a:I

    .line 552
    return-void
.end method

.method protected final a(Ljava/util/List;)V
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
    .line 346
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 353
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    .line 357
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 360
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Lgdj$a;->a(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "orgMemberSelected"    # Z

    .prologue
    .line 423
    .line 6341
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 423
    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 335
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 336
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->e:Landroid/view/View;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->d:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 302
    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 365
    .local p1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 372
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_2

    .line 376
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 379
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lgdj$a;->a(Ljava/util/List;I)V

    goto :goto_0
.end method

.method protected final c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 384
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 391
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 398
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lgdj$a;->a(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public final d(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "aclMemberModels":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    const/4 v0, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 250
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    invoke-static {v3, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 252
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    if-eqz v3, :cond_0

    .line 253
    iput v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    .line 254
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    .line 4057
    iput v1, v3, Lgdk;->a:I

    .line 255
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a:Landroid/view/View;

    invoke-static {v3, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 256
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b(Z)V

    .line 259
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->s:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->g:Landroid/view/View;

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 274
    :goto_0
    return-void

    .line 266
    :cond_2
    if-eqz p1, :cond_3

    .line 267
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 270
    :cond_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    invoke-virtual {v3, p1}, Lgdk;->e(Ljava/util/List;)V

    .line 4277
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static {p1}, Lgqd;->b(Ljava/util/List;)Z

    move-result v3

    .line 4279
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4281
    if-eqz v3, :cond_4

    .line 4282
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->i:Landroid/view/View;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 4283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->m:Landroid/view/View;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 4284
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgdk;->e(Ljava/util/List;)V

    .line 273
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    .line 4286
    :cond_4
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->i:Landroid/view/View;

    invoke-static {v3, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 4288
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4290
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->m:Landroid/view/View;

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v1}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 4288
    goto :goto_2
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 323
    .line 5341
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 323
    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string/jumbo v0, "20170712"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v0}, Lgdj$a;->a()V

    .line 172
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 447
    if-nez p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lfzs$f;->tv_right_operate:I

    if-ne v1, v2, :cond_7

    .line 6470
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v1

    .line 7092
    iget-object v2, v1, Lfzr;->a:Ljava/util/List;

    .line 6472
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6476
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6477
    new-instance v4, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    sget v1, Lfzs$h;->space_share_member_delete_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 6479
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 6480
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 7203
    iget-object v0, v0, Lgnu;->b:Ljava/lang/String;

    .line 6480
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6505
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6506
    sget v0, Lfzs$h;->sure:I

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6513
    sget v0, Lfzs$h;->cancel:I

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$3;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6519
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 6481
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 6482
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 8203
    iget-object v0, v0, Lgnu;->b:Ljava/lang/String;

    .line 6482
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6483
    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6484
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 9203
    iget-object v0, v0, Lgnu;->b:Ljava/lang/String;

    .line 6484
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6485
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6486
    sget v0, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    :cond_3
    move v1, v0

    .line 6488
    :goto_2
    if-ge v1, v7, :cond_6

    .line 6489
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 6490
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu;

    .line 10203
    iget-object v0, v0, Lgnu;->b:Ljava/lang/String;

    .line 6490
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6491
    if-ge v1, v6, :cond_5

    .line 6492
    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6488
    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6494
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 6495
    sget v0, Lfzs$h;->space_share_member_more:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 6502
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6503
    sget v0, Lfzs$h;->space_share_member_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 453
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->toggle_enable_org_member:I

    if-ne v0, v1, :cond_9

    .line 454
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 455
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v0}, Lgdj$a;->e()V

    goto/16 :goto_0

    .line 457
    :cond_8
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v0}, Lgdj$a;->f()V

    goto/16 :goto_0

    .line 460
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->ll_add_group:I

    if-ne v0, v1, :cond_a

    .line 461
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->p:Z

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->q:Z

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->r:Z

    invoke-interface {v0, v5, v1, v2, v3}, Lgdj$a;->a(IZZZ)V

    goto/16 :goto_0

    .line 463
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->ll_add_members:I

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->p:Z

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->q:Z

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->r:Z

    invoke-interface {v0, v6, v1, v2, v3}, Lgdj$a;->a(IZZZ)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;

    .line 1128
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->a:Lgdl;

    .line 116
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    .line 118
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceAclMembersFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "onCreate: mPresenter is null, after fix, mPresenter: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    .line 119
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_args_can_choose_users"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->p:Z

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_args_can_choose_dept"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->q:Z

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_args_can_choose_conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->r:Z

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_args_can_edit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->s:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 219
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 221
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->s:Z

    if-nez v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    if-nez v3, :cond_3

    .line 226
    sget v3, Lfzs$h;->dt_cspace_operate_manager:I

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 227
    .local v0, "deleteMemberMenu":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 229
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v3}, Lgdj$a;->c()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    :cond_2
    invoke-static {v0, v5}, Lgpk;->a(Landroid/view/MenuItem;Z)V

    goto :goto_0

    .line 232
    .end local v0    # "deleteMemberMenu":Landroid/view/MenuItem;
    :cond_3
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 233
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->t:Z

    if-nez v3, :cond_4

    .line 234
    const/4 v3, 0x3

    sget v4, Lfzs$h;->space_op_select_all:I

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 235
    .local v1, "selectAll":Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 237
    .end local v1    # "selectAll":Landroid/view/MenuItem;
    :cond_4
    const/4 v3, 0x4

    sget v4, Lfzs$h;->space_op_uncheck_all:I

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 238
    .local v2, "unSelectAll":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
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

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    sget v1, Lfzs$g;->layout_fragment_acl_members:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "view":Landroid/view/View;
    sget v1, Lfzs$f;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->d:Landroid/view/ViewStub;

    .line 142
    sget v1, Lfzs$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    .line 143
    sget v1, Lfzs$f;->bottom_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a:Landroid/view/View;

    .line 144
    sget v1, Lfzs$f;->tv_right_operate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    .line 145
    sget v1, Lfzs$f;->rl_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->g:Landroid/view/View;

    .line 147
    new-instance v1, Lgdk;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lgdk;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    .line 148
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;)V

    .line 2061
    iput-object v2, v1, Lgdk;->b:Lgdk$a;

    .line 155
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    .line 2182
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lfzs$g;->space_acl_add_member_layout:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2183
    sget v1, Lfzs$f;->ll_root_view:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2184
    sget v1, Lfzs$f;->rl_add_org:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->h:Landroid/view/View;

    .line 2185
    sget v1, Lfzs$f;->toggle_enable_org_member:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->j:Landroid/widget/ToggleButton;

    .line 2186
    sget v1, Lfzs$f;->ll_add_group_and_member:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->i:Landroid/view/View;

    .line 2187
    sget v1, Lfzs$f;->ll_add_group:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->k:Landroid/view/View;

    .line 2188
    sget v1, Lfzs$f;->ll_add_members:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->l:Landroid/view/View;

    .line 2190
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2191
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->k:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2192
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->l:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2194
    sget v1, Lfzs$f;->tv_add_org_member_tip:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2196
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    if-eqz v5, :cond_2

    .line 2197
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v5}, Lgdj$a;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x3eb

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 2198
    sget v5, Lfzs$h;->dt_cspace_acl_make_all_members_administrator_tip:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2205
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v1}, Lgdj$a;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x3eb

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v1}, Lgdj$a;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x3ea

    cmp-long v1, v6, v8

    if-nez v1, :cond_2

    .line 2207
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->h:Landroid/view/View;

    const/16 v5, 0x8

    invoke-static {v1, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 2211
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->s:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-static {v4, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 2212
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->k:Landroid/view/View;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->r:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_2
    invoke-static {v4, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    .line 3175
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->space_acl_member_title_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3176
    sget v3, Lfzs$f;->tv_member_selected_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->m:Landroid/view/View;

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->setHasOptionsMenu(Z)V

    .line 162
    return-object v0

    .line 2199
    :cond_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v5}, Lgdj$a;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x3ea

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 2200
    sget v5, Lfzs$h;->dt_cspace_acl_make_all_members_uploader_tip:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2201
    :cond_4
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v5}, Lgdj$a;->d()J

    move-result-wide v6

    const-wide/16 v8, 0x3e9

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 2202
    sget v5, Lfzs$h;->dt_cspace_acl_make_all_members_browser_tip:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2211
    :cond_5
    const/16 v1, 0x8

    goto :goto_1

    .line 2212
    :cond_6
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->onDestroy()V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 602
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_1
    return v2

    .line 559
    :sswitch_0
    iput v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    .line 560
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    .line 12057
    iput v2, v3, Lgdk;->a:I

    .line 561
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->n:Lgdk;

    invoke-virtual {v2}, Lgdk;->notifyDataSetChanged()V

    .line 562
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a:Landroid/view/View;

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 563
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->g()V

    .line 564
    invoke-direct {p0, v4}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b(Z)V

    .line 565
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    .line 568
    :sswitch_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    invoke-interface {v3}, Lgdj$a;->b()Ljava/util/List;

    move-result-object v0

    .line 570
    .local v0, "currentAclMembers":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1

    .line 574
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 575
    .local v1, "memberModel":Lgnu;
    if-eqz v1, :cond_2

    .line 12235
    iget-boolean v4, v1, Lgnu;->f:Z

    .line 575
    if-nez v4, :cond_2

    .line 12243
    iget-boolean v4, v1, Lgnu;->g:Z

    .line 575
    if-nez v4, :cond_2

    .line 578
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgdm;->a(Lgnu;)V

    goto :goto_2

    .line 581
    .end local v1    # "memberModel":Lgnu;
    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->t:Z

    .line 583
    invoke-virtual {p0, v2, v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a(IZ)V

    .line 584
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->g()V

    .line 585
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    .line 588
    .end local v0    # "currentAclMembers":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    :sswitch_2
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v3

    invoke-virtual {v3}, Lgdm;->a()V

    .line 589
    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->t:Z

    .line 591
    invoke-virtual {p0, v2, v4}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a(IZ)V

    .line 592
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->g()V

    .line 593
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_0

    .line 596
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto/16 :goto_1

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lgdj$a;

    .line 12245
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdj$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->o:Lgdj$a;

    .line 58
    return-void
.end method
