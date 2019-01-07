.class final Ldqq$1;
.super Ldqq$c;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqq;->a(Ldqq$d;JZLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqq$c",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:J

.field final synthetic c:Ldqq;


# direct methods
.method constructor <init>(Ldqq;Ljava/lang/Object;J)V
    .locals 1
    .param p1, "this$0"    # Ldqq;

    .prologue
    .line 564
    iput-object p1, p0, Ldqq$1;->c:Ldqq;

    iput-object p2, p0, Ldqq$1;->a:Ljava/lang/Object;

    iput-wide p3, p0, Ldqq$1;->b:J

    invoke-direct {p0, p1}, Ldqq$c;-><init>(Ldqq;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    iget-object v1, p0, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 568
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 1040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 569
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 704
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    iget-object v1, p0, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v0, v2, p1, p2, v1}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 2040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 707
    return-void
.end method

.method protected final synthetic a_(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/16 v0, 0x14

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 564
    check-cast p1, Ljava/util/List;

    .line 2574
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 3040
    iget-object v1, v1, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2574
    if-eqz v1, :cond_b

    .line 2575
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_3

    .line 2577
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 4040
    iput-boolean v7, v0, Ldqq;->f:Z

    .line 2579
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    iget-object v1, p0, Ldqq$1;->a:Ljava/lang/Object;

    .line 5040
    invoke-virtual {v0, v3, v1}, Ldqq;->b(ILjava/lang/Object;)V

    .line 2581
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 6040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2581
    if-nez v0, :cond_1

    .line 2582
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7040
    iput-object v1, v0, Ldqq;->c:Ljava/util/List;

    .line 2583
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8040
    iput-object v1, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 2588
    :cond_0
    :goto_0
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, p1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 2589
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 12040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2589
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2590
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, p1}, Ldqq;->b(Ldqq;Ljava/util/List;)V

    .line 2594
    :goto_1
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, p1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 2596
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    iget-object v1, p0, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v0, v3, v4, v1}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 2597
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, p1}, Ldqq;->c(Ldqq;Ljava/util/List;)Z

    move-result v0

    .line 2599
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    iget-object v2, p0, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 2601
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, v3}, Ldqq;->a(Ldqq;Z)V

    .line 2690
    :goto_2
    return-void

    .line 2584
    :cond_1
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 9040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2584
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2585
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 10040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2585
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2586
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 11040
    iget-object v0, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 2586
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 2592
    :cond_2
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 13040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2592
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2607
    :cond_3
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    iget-object v2, p0, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Ldqq;->b(Ldqq;ILjava/lang/Object;)V

    .line 2609
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 14040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 2609
    if-nez v1, :cond_6

    .line 2610
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15040
    iput-object v2, v1, Ldqq;->c:Ljava/util/List;

    .line 2611
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 16040
    iput-object v2, v1, Ldqq;->d:Ljava/util/HashSet;

    .line 2616
    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    .line 2617
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v1, p1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 2618
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 20040
    iget-object v1, v1, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2618
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 2619
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v1, p1}, Ldqq;->b(Ldqq;Ljava/util/List;)V

    .line 2623
    :goto_4
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v1, p1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 2626
    :cond_5
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    iget-object v2, p0, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v1, v3, v4, v2}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 2629
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 22040
    invoke-virtual {v1}, Ldqq;->c()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 2630
    new-instance v6, Ldqq$1$1;

    invoke-direct {v6, p0}, Ldqq$1$1;-><init>(Ldqq$1;)V

    .line 2683
    iget-wide v4, p0, Ldqq$1;->b:J

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-nez v2, :cond_9

    .line 2684
    if-nez p1, :cond_8

    move v2, v0

    .line 2685
    :goto_5
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 23040
    iget-object v3, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2685
    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Ldqq$1;->c:Ldqq;

    .line 24040
    iget-object v4, v4, Ldqq;->g:Landroid/app/Activity;

    .line 2685
    invoke-static {v6, v0, v4}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v1, v7, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    goto/16 :goto_2

    .line 2612
    :cond_6
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 17040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 2612
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2613
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 18040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 2613
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2614
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 19040
    iget-object v1, v1, Ldqq;->d:Ljava/util/HashSet;

    .line 2614
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_3

    .line 2621
    :cond_7
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    .line 21040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 2621
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 2684
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    move v2, v0

    goto :goto_5

    .line 2687
    :cond_9
    if-nez p1, :cond_a

    move v2, v0

    .line 2688
    :goto_6
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 25040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2688
    iget-wide v4, p0, Ldqq$1;->b:J

    const-class v7, Lcom/alibaba/wukong/Callback;

    iget-object v8, p0, Ldqq$1;->c:Ldqq;

    .line 26040
    iget-object v8, v8, Ldqq;->g:Landroid/app/Activity;

    .line 2688
    invoke-static {v6, v7, v8}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/Conversation;->listPreviousLocalMessages(Lcom/alibaba/wukong/im/Message;IIJLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_2

    .line 2687
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v2, v0, 0x14

    goto :goto_6

    .line 2692
    :cond_b
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    .line 27040
    iput-boolean v7, v0, Ldqq;->f:Z

    .line 2693
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, p1}, Ldqq;->c(Ldqq;Ljava/util/List;)Z

    move-result v0

    .line 2695
    iget-object v1, p0, Ldqq$1;->c:Ldqq;

    iget-object v2, p0, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 2697
    iget-object v0, p0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, v3}, Ldqq;->a(Ldqq;Z)V

    goto/16 :goto_2
.end method
