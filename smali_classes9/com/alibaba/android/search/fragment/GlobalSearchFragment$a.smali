.class public final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/search/SearchGroupType;

.field b:I

.field c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

.field d:Leqp$a;

.field final synthetic e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p2, "searchType"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 2498
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V

    .line 2499
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;Lcom/alibaba/android/search/SearchGroupType;Leqp$a;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment;
    .param p2, "searchType"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p3, "presenter"    # Leqp$a;

    .prologue
    .line 2505
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2491
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    .line 2506
    iput-object p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 2507
    iput-object p3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->d:Leqp$a;

    .line 2509
    new-instance v0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$1;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->f:Ljava/lang/Runnable;

    .line 2518
    return-void
.end method

.method private c()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x0

    .line 2580
    const/4 v0, 0x0

    .line 2581
    .local v0, "rendered":Z
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->g:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2582
    iput v4, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    .line 2583
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[Render]render "

    aput-object v2, v1, v8

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 2584
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, ", costs: "

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->T(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2583
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2585
    const/4 v0, 0x1

    .line 2589
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2590
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->g:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 2593
    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2521
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2522
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$2;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2532
    :goto_0
    return-void

    .line 2530
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2597
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2598
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$4;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;I)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2608
    :goto_0
    return-void

    .line 2606
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2543
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2544
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$3;-><init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2554
    :goto_0
    return-void

    .line 2552
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->g:Ljava/util/List;

    .line 2538
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a(Ljava/util/List;)V

    .line 2539
    return-void
.end method

.method b(I)V
    .locals 9
    .param p1, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2611
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[Render]process "

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 2612
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2611
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 5050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2614
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    if-nez v0, :cond_1

    .line 2615
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->S(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->f:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 2616
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->U(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 2615
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 2617
    iput v8, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    .line 2632
    :cond_0
    :goto_0
    return-void

    .line 2618
    :cond_1
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    if-ne v0, v8, :cond_5

    .line 2620
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2621
    iput p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    .line 2624
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    if-eqz v0, :cond_4

    .line 2625
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->c:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a(I)V

    goto :goto_0

    .line 2626
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->O(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Lcom/alibaba/android/search/fragment/AllSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/search/fragment/AllSearchFragment;->h()V

    goto :goto_0

    .line 2629
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2630
    iput p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    goto :goto_0
.end method

.method b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2557
    if-nez p1, :cond_1

    .line 2558
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->c()Z

    .line 2577
    :cond_0
    :goto_0
    return-void

    .line 2562
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "[Render]setDataList "

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 2563
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2562
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2564
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->e:Lcom/alibaba/android/search/fragment/GlobalSearchFragment;

    invoke-static {v0}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment;->S(Lcom/alibaba/android/search/fragment/GlobalSearchFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2565
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->g:Ljava/util/List;

    .line 2566
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    if-ne v0, v3, :cond_3

    .line 2568
    :cond_2
    iput v3, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    goto :goto_0

    .line 2572
    :cond_3
    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    if-eq v0, v6, :cond_4

    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2575
    :cond_4
    invoke-virtual {p0, v4}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a(I)V

    goto :goto_0
.end method
