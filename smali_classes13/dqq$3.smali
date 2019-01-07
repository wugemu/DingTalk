.class final Ldqq$3;
.super Ldqq$b;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldqq;->c(Ldqq$d;JZLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldqq$b",
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
    .line 886
    iput-object p1, p0, Ldqq$3;->b:Ldqq;

    iput-object p2, p0, Ldqq$3;->a:Ljava/lang/Object;

    invoke-direct {p0, p1}, Ldqq$b;-><init>(Ldqq;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 889
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    const/4 v1, 0x2

    iget-object v2, p0, Ldqq$3;->a:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 890
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 1040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 891
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 886
    check-cast p1, Ljava/util/List;

    .line 2895
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 3040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 2895
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2896
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 2897
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 4040
    iput-boolean v5, v0, Ldqq;->f:Z

    .line 2899
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2905
    :goto_0
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 7040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2905
    if-nez v0, :cond_0

    .line 2906
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8040
    iput-object v1, v0, Ldqq;->c:Ljava/util/List;

    .line 2907
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9040
    iput-object v1, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 2909
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2910
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2912
    iget-object v3, p0, Ldqq$3;->b:Ldqq;

    .line 10040
    iget-object v3, v3, Ldqq;->d:Ljava/util/HashSet;

    .line 2912
    iget-object v4, p0, Ldqq$3;->b:Ldqq;

    .line 11040
    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 2912
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2913
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2900
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 2901
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 5040
    iput-boolean v5, v0, Ldqq;->f:Z

    goto :goto_0

    .line 2903
    :cond_3
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 6040
    iput-boolean v2, v0, Ldqq;->f:Z

    goto :goto_0

    .line 2916
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2917
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    iget-object v2, p0, Ldqq$3;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Ldqq;->b(Ldqq;ILjava/lang/Object;)V

    .line 2918
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 2919
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 12040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 2919
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2920
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 2921
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    const/4 v1, -0x1

    iget-object v2, p0, Ldqq$3;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v2}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 2926
    :cond_5
    :goto_2
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    iget-object v1, p0, Ldqq$3;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v5}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 2927
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    invoke-static {v0, v5}, Ldqq;->a(Ldqq;Z)V

    .line 886
    return-void

    .line 2924
    :cond_6
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 13040
    iput-boolean v2, v0, Ldqq;->f:Z

    goto :goto_2
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 932
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    const/4 v1, 0x2

    iget-object v2, p0, Ldqq$3;->a:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, v2}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    iget-object v0, p0, Ldqq$3;->b:Ldqq;

    .line 2040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 934
    return-void
.end method
