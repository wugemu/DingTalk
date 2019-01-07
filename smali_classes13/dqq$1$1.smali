.class final Ldqq$1$1;
.super Ldqq$c;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqq$1;
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
.field final synthetic a:Ldqq$1;


# direct methods
.method constructor <init>(Ldqq$1;)V
    .locals 1
    .param p1, "this$1"    # Ldqq$1;

    .prologue
    .line 630
    iput-object p1, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, p1, Ldqq$1;->c:Ldqq;

    invoke-direct {p0, v0}, Ldqq$c;-><init>(Ldqq;)V

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

    .line 633
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    iget-object v1, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v1, v1, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 634
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    .line 1040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 635
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

    .line 674
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    iget-object v1, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v1, v1, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v0, v2, p1, p2, v1}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    .line 2040
    invoke-virtual {v0, v2}, Ldqq;->a(Z)V

    .line 676
    return-void
.end method

.method protected final synthetic a_(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 630
    check-cast p1, Ljava/util/List;

    .line 2640
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    const/4 v1, 0x1

    .line 3040
    iput-boolean v1, v0, Ldqq;->f:Z

    .line 2641
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    .line 4040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2641
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2642
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    .line 5040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2642
    if-nez v0, :cond_0

    .line 2643
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6040
    iput-object v1, v0, Ldqq;->c:Ljava/util/List;

    .line 2644
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7040
    iput-object v1, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 2646
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2647
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2649
    iget-object v3, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v3, v3, Ldqq$1;->c:Ldqq;

    .line 8040
    iget-object v3, v3, Ldqq;->d:Ljava/util/HashSet;

    .line 2649
    iget-object v4, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v4, v4, Ldqq$1;->c:Ldqq;

    .line 9040
    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 2649
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2650
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2653
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2654
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    iget-object v2, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v2, v2, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v0, v5, v2}, Ldqq;->b(Ldqq;ILjava/lang/Object;)V

    .line 2655
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 2656
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    .line 10040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2656
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 2657
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, v1}, Ldqq;->b(Ldqq;Ljava/util/List;)V

    .line 2661
    :goto_1
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 2662
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    const/4 v1, -0x1

    iget-object v2, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v2, v2, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v0, v5, v1, v2}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 2665
    :cond_3
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    iget-object v1, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v1, v1, Ldqq$1;->c:Ldqq;

    .line 12040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 2665
    invoke-static {v0, v1}, Ldqq;->c(Ldqq;Ljava/util/List;)Z

    move-result v0

    .line 2667
    iget-object v1, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v1, v1, Ldqq$1;->c:Ldqq;

    iget-object v2, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v2, v2, Ldqq$1;->a:Ljava/lang/Object;

    invoke-static {v1, v5, v2, v0}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 2669
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    invoke-static {v0, v5}, Ldqq;->a(Ldqq;Z)V

    .line 630
    return-void

    .line 2659
    :cond_4
    iget-object v0, p0, Ldqq$1$1;->a:Ldqq$1;

    iget-object v0, v0, Ldqq$1;->c:Ldqq;

    .line 11040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2659
    invoke-interface {v0, v5, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method
