.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0

    .prologue
    .line 2371
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 2371
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V

    return-void
.end method


# virtual methods
.method public final onAtMeStatusChanged(Ljava/util/List;)V
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2530
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2531
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2532
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAtMeStatusChanged: conv id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2535
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2536
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x3

    invoke-static {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 2537
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2538
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 18116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2538
    invoke-static {v1, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2539
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2540
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 19116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 2540
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->b(Ljava/util/List;)V

    .line 2542
    :cond_1
    return-void
.end method

.method public final onDraftChanged(Ljava/util/List;)V
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2488
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2489
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2502
    :cond_0
    :goto_0
    return-void

    .line 2492
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2493
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDraftChanged: conv id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 2495
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x3

    invoke-static {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 2496
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2497
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2497
    invoke-static {v1, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2498
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2499
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 2499
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onEntrancedIdChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v8, 0x5

    .line 2677
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2736
    :cond_0
    :goto_0
    return-void

    .line 2680
    :cond_1
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2681
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 34116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 2681
    invoke-interface {v6}, Ldyy$b;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2684
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2685
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 35116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 2685
    invoke-interface {v6}, Ldyy$b;->v()J

    move-result-wide v4

    .line 2686
    .local v4, "entranceId":J
    const/4 v1, 0x0

    .line 2687
    .local v1, "change":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 2688
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v2, :cond_2

    .line 2691
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 36116
    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 2691
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2692
    const/4 v1, 0x1

    .line 2700
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 2701
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 37116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 2701
    invoke-interface {v6}, Ldyy$b;->o()V

    goto :goto_0

    .line 2695
    .restart local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_4
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->getEntranceId()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 2696
    const/4 v1, 0x1

    .line 2697
    goto :goto_1

    .line 2705
    .end local v1    # "change":Z
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v4    # "entranceId":J
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->o()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2706
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v6, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2707
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 38116
    invoke-virtual {v6, p1, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2708
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 39116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2708
    invoke-static {v6, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2709
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 40116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 40332
    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 2713
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2714
    .local v3, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2715
    .local v0, "addedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 2716
    .restart local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v2, :cond_8

    .line 2719
    invoke-static {v2}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2720
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2722
    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2725
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2726
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v6, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V

    .line 2728
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2729
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2730
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v6, v0, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 2731
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 41116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2731
    invoke-static {v6, v0}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2732
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 42116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 2732
    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->b(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public final onExtensionChanged(Ljava/util/List;)V
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2517
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2518
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2519
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onExtensionChanged: conv id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2522
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2523
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V

    .line 2524
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x5

    invoke-static {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 2525
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2526
    return-void
.end method

.method public final onGroupIconChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2658
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2659
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v1, 0x5

    .line 30116
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2660
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2661
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 31116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2661
    invoke-static {v0, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2662
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 32116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 32332
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Ljava/util/List;Z)V

    .line 2665
    :cond_0
    return-void
.end method

.method public final onGroupRemoved(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2669
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2670
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 33575
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33576
    :cond_0
    :goto_0
    return-void

    .line 33578
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33579
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33582
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 33583
    if-eqz v1, :cond_2

    .line 33586
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33587
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33588
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 33589
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33590
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1, v0}, Ldyy$b;->c(Ljava/lang/String;)V

    .line 33591
    const/4 v1, 0x0

    .line 33593
    :try_start_0
    const-string/jumbo v4, "im"

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->j:Ljava/lang/String;

    invoke-static {v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 33594
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rm conv by cid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33596
    if-eqz v1, :cond_2

    .line 33597
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_1

    .line 33596
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 33597
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_3
    throw v0

    .line 33602
    :cond_4
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ldza;->a(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ldyy$b;->a(I)V

    .line 33604
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->a()V

    goto/16 :goto_0
.end method

.method public final onIconChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2388
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2390
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onIconChanged: conv id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2393
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2394
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2395
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2427
    :cond_1
    :goto_1
    return-void

    .line 2398
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    .line 2399
    .local v2, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    move-object v1, p1

    .line 2400
    .local v1, "finalConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;Ljava/util/List;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final onLatestMessageChanged(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2431
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2432
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2433
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2433
    invoke-static {v3, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2434
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2435
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 5332
    invoke-virtual {v3, p1, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Ljava/util/List;Z)V

    .line 2436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2437
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 2438
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 2439
    .local v2, "latestMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v2, :cond_0

    .line 2441
    const/16 v4, 0x8

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "onLatestMessageChanged: conv id="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 2442
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " lastMid="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 2443
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " unreadCount="

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 2444
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, " recallStatus="

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 2445
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2441
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldza;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2446
    :catch_0
    move-exception v1

    .line 2448
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "onLatestMessageChanged, error="

    aput-object v7, v6, v8

    .line 2449
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 2448
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2455
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "latestMessage":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method

.method public final onLocalExtrasChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2546
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2548
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onLocalExtrasChanged: conv id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2551
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2552
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v4, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2553
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 20116
    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2553
    invoke-static {v4, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2554
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2604
    :cond_1
    :goto_1
    return-void

    .line 2557
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 21116
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    .line 2558
    .local v3, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    move-object v1, p1

    .line 2559
    .local v1, "finalConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;Ljava/util/List;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2603
    .local v2, "newConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 22116
    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 2603
    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->b(Ljava/util/List;)V

    goto :goto_1
.end method

.method public final onMemberCountChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2640
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2641
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v1, 0x5

    .line 27116
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2642
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2643
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 28116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2643
    invoke-static {v0, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2644
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2645
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 29116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 29332
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Ljava/util/List;Z)V

    .line 2647
    :cond_0
    return-void
.end method

.method public final onNotificationChanged(Ljava/util/List;)V
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2608
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2609
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2610
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onNotificationChanged: conv id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2613
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2614
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 2615
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2616
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 23116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2616
    invoke-static {v1, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2617
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2618
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 24116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 2618
    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->b(Ljava/util/List;)V

    .line 2620
    :cond_1
    return-void
.end method

.method public final onShowHistoryTypeChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2651
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2652
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2653
    invoke-super {p0, p1}, Lcom/alibaba/wukong/im/ConversationChangeListener;->onShowHistoryTypeChanged(Ljava/util/List;)V

    .line 2654
    return-void
.end method

.method public final onTagChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2507
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2508
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 2508
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 14116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2508
    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 15116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 2509
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 16116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2509
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filterDisplay(Ljava/util/List;)V

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v1, 0x1

    .line 17116
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2512
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2513
    return-void
.end method

.method public final onTitleChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v4, 0x1

    .line 2374
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2376
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onTitleChanged: conv id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2379
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2380
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2381
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v1, p1, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 2383
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v1, p1, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V

    .line 2384
    return-void
.end method

.method public final onTopChanged(Ljava/util/List;)V
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2624
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2626
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onTopChanged: conv id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2629
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_0
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2631
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 25116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2631
    invoke-static {v1, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2632
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2633
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V

    .line 2634
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 26116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 2634
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Ljava/util/List;Z)V

    .line 2636
    :cond_1
    return-void
.end method

.method public final onUnreadCountChanged(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v8, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2459
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2460
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2484
    :cond_0
    :goto_0
    return-void

    .line 2464
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2465
    .local v0, "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 2466
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2471
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    invoke-virtual {v1, p1, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2472
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 2473
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2473
    invoke-static {v1, p1}, Ldza;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2474
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2475
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->r:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;

    .line 8332
    invoke-virtual {v1, p1, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;->a(Ljava/util/List;Z)V

    .line 2476
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 2477
    .restart local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_5

    move v1, v2

    :goto_2
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v2, :cond_6

    move v4, v2

    :goto_3
    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2478
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "onUnreadCountChanged: conv id="

    aput-object v4, v1, v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string/jumbo v6, " lastMid="

    aput-object v6, v1, v4

    const/4 v4, 0x3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v6, " unreadCount="

    aput-object v6, v1, v4

    const/4 v4, 0x5

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    const-string/jumbo v4, " recallStatus="

    aput-object v4, v1, v8

    const/4 v4, 0x7

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldza;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 2477
    goto :goto_2

    :cond_6
    move v4, v3

    goto :goto_3

    .line 2483
    .end local v0    # "c":Lcom/alibaba/wukong/im/Conversation;
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 2483
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 2483
    invoke-static {v2}, Ldza;->a(Ljava/util/List;)I

    move-result v2

    invoke-interface {v1, v2}, Ldyy$b;->a(I)V

    goto/16 :goto_0
.end method
