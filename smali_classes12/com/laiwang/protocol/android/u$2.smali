.class Lcom/laiwang/protocol/android/u$2;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPBioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/u;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[B

.field final synthetic b:Lcom/laiwang/protocol/android/u;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/u;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .prologue
    .line 170
    iput-object p1, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-direct {p0, p2, p3, p4}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 172
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/laiwang/protocol/android/u$2;->a:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, -0x1

    .line 177
    :try_start_0
    const-string/jumbo v3, "[io] T_B loop read >> %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/u;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->i(Lcom/laiwang/protocol/android/u;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$2;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 180
    .local v1, "len":I
    if-eq v1, v7, :cond_2

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-eq v3, v4, :cond_2

    .line 181
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->b(Lcom/laiwang/protocol/android/u;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/laiwang/protocol/android/k$c;

    .line 182
    .local v2, "listener":Lcom/laiwang/protocol/android/k$c;
    if-eqz v2, :cond_0

    .line 183
    iget-object v4, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    iget-object v5, p0, Lcom/laiwang/protocol/android/u$2;->a:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/laiwang/protocol/android/k$c;->a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v1    # "len":I
    .end local v2    # "listener":Lcom/laiwang/protocol/android/k$c;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[io] T_B loop exception >> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/u;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/u$2;->stop()V

    .line 200
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v3, v0}, Lcom/laiwang/protocol/android/u;->a(Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void

    .line 188
    .restart local v1    # "len":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v3}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v3

    sget-object v4, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v3, v4, :cond_3

    if-ne v1, v7, :cond_4

    .line 189
    :cond_3
    const-string/jumbo v3, "[io] T_B read loop exit >> %s,"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v6}, Lcom/laiwang/protocol/android/u;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/u$2;->stop()V

    .line 192
    :cond_4
    if-ne v1, v7, :cond_1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[io] T_B read -1 >> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/u;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/laiwang/protocol/android/u$2;->b:Lcom/laiwang/protocol/android/u;

    sget-object v4, Lcom/laiwang/protocol/android/k;->b:Lcom/laiwang/protocol/android/k$b;

    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/android/u;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
