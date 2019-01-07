.class final Ldqq$7;
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

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Ldqq;


# direct methods
.method constructor <init>(Ldqq;Ljava/lang/Object;ILcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Ldqq;

    .prologue
    .line 1343
    iput-object p1, p0, Ldqq$7;->d:Ldqq;

    iput-object p2, p0, Ldqq$7;->a:Ljava/lang/Object;

    iput p3, p0, Ldqq$7;->b:I

    iput-object p4, p0, Ldqq$7;->c:Lcom/alibaba/wukong/im/Message;

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
    .line 1347
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    const/4 v1, 0x2

    iget-object v2, p0, Ldqq$7;->a:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ldqq;->a(Ldqq;ILjava/lang/Object;)V

    .line 1348
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 2040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 1349
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1343
    check-cast p1, Ljava/util/List;

    .line 3357
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 4040
    iget-object v0, v0, Ldqq;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3357
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 3358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ldqq$7;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3359
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 5040
    iput-boolean v5, v0, Ldqq;->f:Z

    .line 3360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3366
    :goto_0
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 8040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3366
    if-nez v0, :cond_0

    .line 3367
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9040
    iput-object v1, v0, Ldqq;->c:Ljava/util/List;

    .line 3368
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10040
    iput-object v1, v0, Ldqq;->d:Ljava/util/HashSet;

    .line 3370
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3371
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

    .line 3372
    iget-object v3, p0, Ldqq$7;->d:Ldqq;

    .line 11040
    iget-object v3, v3, Ldqq;->d:Ljava/util/HashSet;

    .line 3372
    iget-object v4, p0, Ldqq$7;->d:Ldqq;

    .line 12040
    invoke-static {v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 3372
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3373
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3361
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ldqq$7;->b:I

    if-ne v0, v1, :cond_3

    .line 3362
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 6040
    iput-boolean v5, v0, Ldqq;->f:Z

    goto :goto_0

    .line 3364
    :cond_3
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 7040
    iput-boolean v2, v0, Ldqq;->f:Z

    goto :goto_0

    .line 3376
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 3377
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    iget-object v2, p0, Ldqq$7;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Ldqq;->b(Ldqq;ILjava/lang/Object;)V

    .line 3378
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/List;)V

    .line 3379
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 13040
    iget-object v0, v0, Ldqq;->c:Ljava/util/List;

    .line 3379
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3380
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    invoke-static {v0, v1}, Ldqq;->a(Ldqq;Ljava/util/Collection;)V

    .line 3381
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    iget-object v1, p0, Ldqq$7;->d:Ldqq;

    .line 14040
    iget-object v1, v1, Ldqq;->c:Ljava/util/List;

    .line 3381
    iget-object v2, p0, Ldqq$7;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Ldqq;->a(Ljava/util/List;Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    iget-object v2, p0, Ldqq$7;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v2}, Ldqq;->a(Ldqq;IILjava/lang/Object;)V

    .line 3386
    :cond_5
    :goto_2
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    iget-object v1, p0, Ldqq$7;->a:Ljava/lang/Object;

    invoke-static {v0, v6, v1, v5}, Ldqq;->a(Ldqq;ILjava/lang/Object;Z)V

    .line 3387
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    invoke-static {v0, v5}, Ldqq;->a(Ldqq;Z)V

    .line 1343
    return-void

    .line 3384
    :cond_6
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 15040
    iput-boolean v2, v0, Ldqq;->f:Z

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1392
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    const/4 v1, 0x2

    iget-object v2, p0, Ldqq$7;->a:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, v2}, Ldqq;->a(Ldqq;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1393
    iget-object v0, p0, Ldqq$7;->d:Ldqq;

    .line 3040
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldqq;->a(Z)V

    .line 1394
    return-void
.end method
