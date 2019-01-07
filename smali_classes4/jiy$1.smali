.class final Ljiy$1;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiy;->a(Lcom/taobao/accs/data/Message;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/Message;

.field final synthetic b:Z

.field final synthetic c:Ljiy;


# direct methods
.method constructor <init>(Ljiy;Lcom/taobao/accs/data/Message;Z)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Ljiy$1;->c:Ljiy;

    iput-object p2, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    iput-boolean p3, p0, Ljiy$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x2

    .line 193
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 194
    :try_start_0
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    iget-object v4, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-static {v2, v4}, Ljiy;->a(Ljiy;Lcom/taobao/accs/data/Message;)V

    .line 195
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 196
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v4, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ljiy$1;->b:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 216
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v3

    return-void

    .line 198
    :cond_3
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message;

    .line 199
    .local v1, "head":Lcom/taobao/accs/data/Message;
    iget-object v2, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    if-nez v2, :cond_5

    .line 200
    :cond_4
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v4, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 202
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 221
    .end local v1    # "head":Lcom/taobao/accs/data/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 204
    .restart local v1    # "head":Lcom/taobao/accs/data/Message;
    :cond_5
    :try_start_3
    iget-object v2, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    if-ne v2, v5, :cond_6

    invoke-virtual {v1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 205
    iget-boolean v2, v1, Lcom/taobao/accs/data/Message;->force:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    iget-boolean v2, v2, Lcom/taobao/accs/data/Message;->force:Z

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 207
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v4, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 210
    :cond_6
    iget-object v2, p0, Ljiy$1;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v4, p0, Ljiy$1;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 217
    .end local v1    # "head":Lcom/taobao/accs/data/Message;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
