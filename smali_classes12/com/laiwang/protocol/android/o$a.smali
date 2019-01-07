.class Lcom/laiwang/protocol/android/o$a;
.super Ljava/lang/Object;
.source "LwsConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/o;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/o;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

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
    .line 276
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->d(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v1, v2, :cond_1

    .line 277
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

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

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 278
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_0

    .line 279
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v2}, Lcom/laiwang/protocol/android/ab$h;->a(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 282
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
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
    .line 286
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 287
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

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

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 288
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_0

    .line 289
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v2, p2}, Lcom/laiwang/protocol/android/ab$h;->a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    :cond_1
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v0, p2}, Lcom/laiwang/protocol/android/o;->b(Ljava/nio/ByteBuffer;)V

    .line 272
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;)V
    .locals 1
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v0}, Lcom/laiwang/protocol/android/o;->f(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/j;

    move-result-object v0

    iget-object v0, v0, Lcom/laiwang/protocol/android/j;->b:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/j$a;->b()V

    .line 296
    iget-object v0, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/k;)V

    .line 297
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
    .line 311
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 312
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->c(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->g(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 313
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->c(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v2}, Lcom/laiwang/protocol/android/o;->h(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 314
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

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

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 315
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_0

    .line 316
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v2, p2}, Lcom/laiwang/protocol/android/ab$h;->b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 318
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
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
    .line 301
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 302
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->f(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/j;

    move-result-object v1

    iget-object v1, v1, Lcom/laiwang/protocol/android/j;->b:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v1}, Lcom/laiwang/protocol/android/j$a;->a()V

    .line 303
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

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

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 304
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_0

    .line 305
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$a;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v2}, Lcom/laiwang/protocol/android/ab$h;->c(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 307
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    :cond_1
    return-void
.end method
