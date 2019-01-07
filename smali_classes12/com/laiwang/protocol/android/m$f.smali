.class Lcom/laiwang/protocol/android/m$f;
.super Ljava/lang/Object;
.source "LwpConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/ab$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/m;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/m;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/m;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 227
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/android/m$e;->a(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 230
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 235
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 236
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 237
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 238
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2, p2}, Lcom/laiwang/protocol/android/m$e;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "content"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/av;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/laiwang/protocol/android/av;->a(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bd;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/bd;

    .line 178
    .local v2, "message":Lcom/laiwang/protocol/android/bd;
    if-eqz v2, :cond_0

    .line 180
    instance-of v4, v2, Lcom/laiwang/protocol/core/Response;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v6, Lcom/laiwang/protocol/core/Constants$Status;->PARTIAL:Lcom/laiwang/protocol/core/Constants$Status;

    iget v6, v6, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    if-eq v4, v6, :cond_2

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V

    .line 182
    :cond_2
    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, v2, Lcom/laiwang/protocol/core/Response;

    if-eqz v4, :cond_4

    .line 184
    const-string/jumbo v4, "[LwpConn] account reg resp >> %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->d(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;

    move-result-object v4

    iget-object v5, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v5}, Lcom/laiwang/protocol/android/m;->c(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m$b;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 186
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    check-cast v2, Lcom/laiwang/protocol/core/Response;

    .end local v2    # "message":Lcom/laiwang/protocol/android/bd;
    invoke-interface {v4, v2}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    .line 187
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4, v10}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)Lcom/laiwang/protocol/core/Request;

    .line 222
    .end local v0    # "id":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 191
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v2    # "message":Lcom/laiwang/protocol/android/bd;
    :cond_4
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->e(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->e(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, v2, Lcom/laiwang/protocol/core/Response;

    if-eqz v4, :cond_5

    .line 192
    const-string/jumbo v4, "[LwpConn] device reg resp >> %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->d(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;

    move-result-object v4

    iget-object v5, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v5}, Lcom/laiwang/protocol/android/m;->c(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m$b;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 194
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->e(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Request;->getReply()Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    check-cast v2, Lcom/laiwang/protocol/core/Response;

    .end local v2    # "message":Lcom/laiwang/protocol/android/bd;
    invoke-interface {v4, v2}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    .line 195
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4, v10}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)Lcom/laiwang/protocol/core/Request;

    goto :goto_1

    .line 200
    .restart local v2    # "message":Lcom/laiwang/protocol/android/bd;
    :cond_5
    instance-of v4, v2, Lcom/laiwang/protocol/core/Response;

    if-eqz v4, :cond_6

    .line 201
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->f(Lcom/laiwang/protocol/android/m;)Ljava/util/Queue;

    move-result-object v4

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 202
    .local v3, "ret":Z
    if-nez v3, :cond_6

    .line 203
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->g(Lcom/laiwang/protocol/android/m;)Ljava/util/Queue;

    move-result-object v4

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bd;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 204
    if-eqz v3, :cond_6

    .line 205
    const-string/jumbo v4, "[LwpConn] server data pong >> %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->h(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/aa;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/android/aa;->f()V

    goto/16 :goto_1

    .line 211
    .end local v3    # "ret":Z
    :cond_6
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->j(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;

    move-result-object v4

    new-instance v6, Lcom/laiwang/protocol/android/m$f$1;

    const-string/jumbo v7, "read-task"

    invoke-direct {v6, p0, v7, v2}, Lcom/laiwang/protocol/android/m$f$1;-><init>(Lcom/laiwang/protocol/android/m$f;Ljava/lang/String;Lcom/laiwang/protocol/android/bd;)V

    invoke-virtual {v4, v6}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    goto/16 :goto_0
.end method

.method public b(Lcom/laiwang/protocol/android/k;)V
    .locals 7
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->l(Lcom/laiwang/protocol/android/m;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->m(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/ac;

    move-result-object v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    new-instance v2, Lcom/laiwang/protocol/android/ac;

    iget-object v3, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v3}, Lcom/laiwang/protocol/android/m;->n(Lcom/laiwang/protocol/android/m;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->o(Lcom/laiwang/protocol/android/m;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v5}, Lcom/laiwang/protocol/android/m;->h(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/aa;

    move-result-object v5

    iget-object v6, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v6}, Lcom/laiwang/protocol/android/m;->d(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/laiwang/protocol/android/ac;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/laiwang/protocol/android/aa;Lcom/laiwang/protocol/android/bu;)V

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/ac;)Lcom/laiwang/protocol/android/ac;

    .line 248
    :cond_0
    const-string/jumbo v1, "[LwpConn] start keepalive %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->m(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/ac;

    move-result-object v1

    new-instance v2, Lcom/laiwang/protocol/android/m$f$2;

    invoke-direct {v2, p0}, Lcom/laiwang/protocol/android/m$f$2;-><init>(Lcom/laiwang/protocol/android/m$f;)V

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/ac;->a(Lcom/laiwang/protocol/android/ac$c;)V

    .line 263
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->p(Lcom/laiwang/protocol/android/m;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->m(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/ac;->a()V

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 268
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 269
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_2

    .line 270
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/android/m$e;->b(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 273
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_3
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->h(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/aa;

    move-result-object v1

    invoke-interface {v1}, Lcom/laiwang/protocol/android/aa;->i()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 274
    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/m$f;->f(Lcom/laiwang/protocol/android/k;)V

    .line 276
    :cond_4
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 290
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 291
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->d(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->c(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 292
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 293
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2, p2}, Lcom/laiwang/protocol/android/m$e;->b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 296
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->l(Lcom/laiwang/protocol/android/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->m(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/ac;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->m(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/ac;->b()V

    .line 299
    :cond_2
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 303
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 304
    .local v0, "body":[B
    aget-byte v6, v0, v9

    and-int/lit16 v5, v6, 0xff

    .line 305
    .local v5, "type":I
    iget-object v6, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v6}, Lcom/laiwang/protocol/android/m;->q(Lcom/laiwang/protocol/android/m;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v6}, Lcom/laiwang/protocol/android/m;->q(Lcom/laiwang/protocol/android/m;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    const-string/jumbo v6, "[LwpConn] onLwsControl %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v6, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v6}, Lcom/laiwang/protocol/android/m;->q(Lcom/laiwang/protocol/android/m;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 308
    .local v4, "startLine":Ljava/lang/String;
    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;Lcom/laiwang/protocol/core/MessageID;)Lcom/laiwang/protocol/core/Request;

    move-result-object v3

    .line 309
    .local v3, "request":Lcom/laiwang/protocol/core/Request;
    const-string/jumbo v6, "dt"

    const-string/jumbo v7, "p"

    invoke-virtual {v3, v6, v7}, Lcom/laiwang/protocol/core/Request;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 311
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    new-array v2, v6, [B

    .line 312
    .local v2, "payload":[B
    array-length v6, v2

    invoke-static {v0, v10, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    invoke-virtual {v3, v2}, Lcom/laiwang/protocol/core/Request;->payload([B)V

    .line 314
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->NO_ACK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 315
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_HEADER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 316
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/core/Request;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 317
    iget-object v6, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v6, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V

    .line 318
    iget-object v6, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v6}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/m$e;

    .line 319
    .local v1, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v1, :cond_0

    .line 320
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v1, v7, v3}, Lcom/laiwang/protocol/android/m$e;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V

    goto :goto_0

    .line 323
    .end local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    .end local v2    # "payload":[B
    .end local v3    # "request":Lcom/laiwang/protocol/core/Request;
    .end local v4    # "startLine":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public c(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 281
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 282
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/android/m$e;->c(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 285
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method

.method public d(Lcom/laiwang/protocol/android/k;)V
    .locals 5
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 327
    const-string/jumbo v1, "[LwpConn] ping timeout %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->r(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v1, v2, :cond_1

    .line 329
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 330
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 331
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/android/m$e;->i(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 334
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method

.method public e(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 339
    return-void
.end method

.method public f(Lcom/laiwang/protocol/android/k;)V
    .locals 7
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 343
    const-string/jumbo v2, "[LwpConn] onHandshakeStart & start auth %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)Z

    move-result v1

    .line 349
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 350
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 351
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v2}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 352
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 353
    iget-object v3, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/android/m$e;->e(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 356
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method

.method public g(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 361
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 362
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 363
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/android/m$e;->l(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 365
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method

.method public h(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 370
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 371
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 372
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 373
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v0, v2}, Lcom/laiwang/protocol/android/m$e;->m(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 375
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method
