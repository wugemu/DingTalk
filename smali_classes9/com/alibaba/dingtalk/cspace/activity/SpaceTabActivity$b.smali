.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;
.super Ljava/lang/Object;
.source "SpaceTabActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 489
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 439
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 443
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I

    .line 445
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I

    .line 447
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->j(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iput v2, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    .line 450
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z

    move-result v0

    .line 451
    .local v0, "isStatistics":Z
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Z)Z

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 456
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iput v4, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->k:I

    .line 457
    if-eqz v0, :cond_1

    .line 458
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_public_folder_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 475
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    if-eq v1, v5, :cond_7

    .line 476
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    sget v3, Lfzs$h;->yun_space:I

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a()V

    .line 483
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->supportInvalidateOptionsMenu()V

    .line 484
    return-void

    .line 460
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)I

    move-result v1

    if-nez v1, :cond_6

    .line 461
    if-eqz v0, :cond_5

    .line 462
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_personal_folder_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 464
    :cond_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->j:Ljava/lang/String;

    .line 465
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iput-boolean v4, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->p:Z

    .line 466
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iput v5, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->k:I

    .line 467
    invoke-static {}, Lgle;->a()Lgle;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    sget v4, Lfzs$h;->org_personal:I

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgle;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_6
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->i(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 469
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    const/4 v2, 0x6

    iput v2, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->k:I

    .line 470
    if-eqz v0, :cond_1

    .line 471
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_story_folder_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_7
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$b;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 2276
    iget v2, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a:I

    if-ne v2, v5, :cond_2

    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    if-eqz v2, :cond_2

    .line 2277
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l:Lgdf;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v2, v1}, Lgdf;->b(I)V

    goto/16 :goto_1
.end method
