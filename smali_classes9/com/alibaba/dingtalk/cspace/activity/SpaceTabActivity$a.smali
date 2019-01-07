.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;
.super Lcq;
.source "SpaceTabActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
    .param p2, "fm"    # Lcn;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .line 366
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 367
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 13
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 371
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I

    move-result v10

    .line 373
    .local v10, "currentIndex":I
    if-ne v10, v4, :cond_2

    .line 374
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-wide v2, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->m:J

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    invoke-static {v2, v3, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a(JI)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    .line 377
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;->a(Z)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceShareFragment;

    move-result-object v2

    .line 406
    :cond_1
    :goto_0
    return-object v2

    .line 382
    :cond_2
    if-nez v10, :cond_4

    .line 383
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    if-nez v0, :cond_3

    .line 384
    iget-object v11, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget v6, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v7, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v8, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->w:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v9, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->s:Ljava/util/ArrayList;

    move-object v3, v2

    invoke-static/range {v0 .. v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 386
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Z)V

    .line 387
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    .line 3709
    iput v12, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->e:I

    .line 388
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-boolean v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->n:Z

    .line 3717
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->g:Z

    .line 389
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    move-result-object v2

    goto :goto_0

    .line 396
    :cond_4
    if-ne v10, v12, :cond_1

    .line 397
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    move-result-object v0

    if-nez v0, :cond_5

    .line 398
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a:I

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(I)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .line 401
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(Z)V

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;)[I

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 419
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 424
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v1, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;I)I

    move-result v0

    .line 425
    .local v0, "index":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->b()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
