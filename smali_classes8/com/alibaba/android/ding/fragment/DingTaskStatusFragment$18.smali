.class final Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;
.super Ljava/lang/Object;
.source "DingTaskStatusFragment.java"

# interfaces
.implements Lbhr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->j()Lbhr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Z)Z

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->j(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)V

    goto :goto_0
.end method

.method public final a(Lbfw;)V
    .locals 7
    .param p1, "objectV3"    # Lbfw;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v4, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Z)Z

    .line 490
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->f(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)Z

    move-result v0

    .line 491
    .local v0, "lastSelectAll":Z
    const-wide/16 v2, 0x0

    .line 492
    .local v2, "nextRemindTime":J
    if-eqz p1, :cond_0

    iget-object v4, p1, Lbfw;->e:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->g(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)Laxx;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 493
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v5, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v4, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->b(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Z)Z

    .line 494
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->h(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)I

    move-result v1

    if-nez v1, :cond_4

    .line 495
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->i(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 496
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v4, p1, Lbfw;->e:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->b(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Ljava/util/List;)Ljava/util/List;

    .line 497
    iget-wide v2, p1, Lbfw;->f:J

    .line 501
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->h(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)I

    move-result v4

    iget-object v5, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;I)I

    .line 502
    if-eqz v0, :cond_3

    .line 503
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->b(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)V

    .line 505
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->j(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)V

    .line 506
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;J)V

    goto :goto_0

    .line 499
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$18;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->i(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p1, Lbfw;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
