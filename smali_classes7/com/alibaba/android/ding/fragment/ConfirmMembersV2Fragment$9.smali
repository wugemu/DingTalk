.class final Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;
.super Ljava/lang/Object;
.source "ConfirmMembersV2Fragment.java"

# interfaces
.implements Lbhr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k()Lbhr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .line 2028
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->b:Z

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    goto :goto_0
.end method

.method public final a(Lbfw;)V
    .locals 7
    .param p1, "objectV3"    # Lbfw;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .line 1028
    iput-boolean v1, v4, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->b:Z

    .line 461
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Z

    move-result v0

    .line 462
    .local v0, "lastSelectAll":Z
    const-wide/16 v2, 0x0

    .line 463
    .local v2, "nextRemindTime":J
    if-eqz p1, :cond_0

    iget-object v4, p1, Lbfw;->e:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->c(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Laxy;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 464
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    iget-object v5, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v4, v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;Z)Z

    .line 465
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)I

    move-result v1

    if-nez v1, :cond_4

    .line 466
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->b(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 467
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    iget-object v4, p1, Lbfw;->e:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;Ljava/util/List;)Ljava/util/List;

    .line 468
    iget-wide v2, p1, Lbfw;->f:J

    .line 472
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)I

    move-result v4

    iget-object v5, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;I)I

    .line 473
    if-eqz v0, :cond_3

    .line 474
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->e(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    .line 476
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    .line 477
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;J)V

    goto :goto_0

    .line 470
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->b(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
