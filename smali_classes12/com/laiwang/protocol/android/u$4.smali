.class Lcom/laiwang/protocol/android/u$4;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPBioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/u;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/laiwang/protocol/android/u;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/u;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    iput-object p3, p0, Lcom/laiwang/protocol/android/u$4;->a:Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v2

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-ne v2, v3, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    sget-object v3, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 272
    const-string/jumbo v2, "[io] T_B close >> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v5}, Lcom/laiwang/protocol/android/u;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->d(Lcom/laiwang/protocol/android/u;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/k$c;

    .line 282
    .local v1, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v1, :cond_3

    .line 283
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$4;->a:Ljava/lang/Throwable;

    invoke-interface {v1, v3, v4}, Lcom/laiwang/protocol/android/k$c;->b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 276
    .end local v1    # "listener":Lcom/laiwang/protocol/android/k$c;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->k(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 287
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->k(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bu;->d()V

    .line 289
    :cond_5
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->g(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 290
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->g(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bu;->d()V

    .line 292
    :cond_6
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->l(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/laiwang/protocol/android/u$4;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v2}, Lcom/laiwang/protocol/android/u;->l(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/bu;->d()V

    goto/16 :goto_0
.end method
