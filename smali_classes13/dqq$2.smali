.class final Ldqq$2;
.super Ldqq$c;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqq;->b(Ldqq$d;JZLjava/lang/Object;)V
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

.field final synthetic b:Ldqq;


# direct methods
.method constructor <init>(Ldqq;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ldqq;

    .prologue
    .line 775
    iput-object p1, p0, Ldqq$2;->b:Ldqq;

    iput-object p2, p0, Ldqq$2;->a:Ljava/lang/Object;

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
    .line 778
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    const/4 v1, 0x1

    iget-object v2, p0, Ldqq$2;->a:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 779
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    .line 1040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 780
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
    .line 814
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    const/4 v1, 0x1

    iget-object v2, p0, Ldqq$2;->a:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, v2}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    .line 2040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 816
    return-void
.end method

.method protected final synthetic a_(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 775
    check-cast p1, Ljava/util/List;

    .line 2784
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    .line 3040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2784
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2785
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    .line 4040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2785
    if-nez v0, :cond_0

    .line 2786
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5040
    iput-object v1, v0, Ldqq;->c:Ljava/util/List;

    .line 2787
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6040
    iput-object v1, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 2789
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2790
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

    .line 2792
    iget-object v3, p0, Ldqq$2;->b:Ldqq;

    .line 7040
    iget-object v3, v3, Ldqq;->d:Ljava/util/HashSet;

    .line 2792
    iget-object v4, p0, Ldqq$2;->b:Ldqq;

    .line 8040
    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 2792
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2793
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2796
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2797
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    iget-object v2, p0, Ldqq$2;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Ldqq;->b(Ldqq;ILjava/lang/Object;)V

    .line 2798
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 2799
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    .line 9040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2799
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 2800
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    invoke-static {v0, v1}, Ldqq;->b(Ldqq;Ljava/util/List;)V

    .line 2804
    :goto_1
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 2805
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    const/4 v1, -0x1

    iget-object v2, p0, Ldqq$2;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v2}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 2808
    :cond_3
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    iget-object v1, p0, Ldqq$2;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v5}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 2809
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    invoke-static {v0, v5}, Ldqq;->a(Ldqq;Z)V

    .line 775
    return-void

    .line 2802
    :cond_4
    iget-object v0, p0, Ldqq$2;->b:Ldqq;

    .line 10040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2802
    invoke-interface {v0, v5, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method
