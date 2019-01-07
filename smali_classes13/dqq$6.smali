.class final Ldqq$6;
.super Ldqq$b;
.source "ChatMsgListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqq;
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

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Ldqq;


# direct methods
.method constructor <init>(Ldqq;Ljava/lang/Object;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldqq;

    .prologue
    .line 1284
    iput-object p1, p0, Ldqq$6;->c:Ldqq;

    iput-object p2, p0, Ldqq$6;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldqq$6;->b:Lcom/alibaba/wukong/im/Message;

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
    .line 1288
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    const/4 v1, 0x1

    iget-object v2, p0, Ldqq$6;->a:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 1289
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    .line 2040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 1290
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1284
    check-cast p1, Ljava/util/List;

    .line 3298
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    .line 4040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3298
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3299
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    .line 5040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3299
    if-nez v0, :cond_0

    .line 3300
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6040
    iput-object v1, v0, Ldqq;->c:Ljava/util/List;

    .line 3301
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7040
    iput-object v1, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 3303
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3304
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

    .line 3305
    iget-object v3, p0, Ldqq$6;->c:Ldqq;

    .line 8040
    iget-object v3, v3, Ldqq;->d:Ljava/util/HashSet;

    .line 3305
    iget-object v4, p0, Ldqq$6;->c:Ldqq;

    .line 9040
    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 3305
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3306
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3309
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3310
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    iget-object v2, p0, Ldqq$6;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Ldqq;->b(Ldqq;ILjava/lang/Object;)V

    .line 3311
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 3312
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    .line 10040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3312
    invoke-interface {v0, v5, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 3313
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 3314
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    iget-object v1, p0, Ldqq$6;->c:Ldqq;

    .line 11040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 3314
    iget-object v2, p0, Ldqq$6;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    iget-object v2, p0, Ldqq$6;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v2}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 3317
    :cond_3
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    iget-object v1, p0, Ldqq$6;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v5}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 3318
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    invoke-static {v0, v5}, Ldqq;->a(Ldqq;Z)V

    .line 1284
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1323
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    const/4 v1, 0x1

    iget-object v2, p0, Ldqq$6;->a:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, v2}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1324
    iget-object v0, p0, Ldqq$6;->c:Ldqq;

    .line 3040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 1325
    return-void
.end method
