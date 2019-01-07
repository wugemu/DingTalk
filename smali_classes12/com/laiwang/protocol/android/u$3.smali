.class Lcom/laiwang/protocol/android/u$3;
.super Lcom/laiwang/protocol/android/bu$a;
.source "TCPBioConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/u;->a(Ljava/nio/ByteBuffer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcom/laiwang/protocol/android/u;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/u;Ljava/lang/String;JLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/u;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .prologue
    .line 218
    iput-object p1, p0, Lcom/laiwang/protocol/android/u$3;->b:Lcom/laiwang/protocol/android/u;

    iput-object p5, p0, Lcom/laiwang/protocol/android/u$3;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2, p3, p4}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/u$3;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v1}, Lcom/laiwang/protocol/android/u;->a(Lcom/laiwang/protocol/android/u;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    if-ne v1, v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string/jumbo v1, "[io] T_B write run >> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$3;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/u;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/laiwang/protocol/android/u$3;->b:Lcom/laiwang/protocol/android/u;

    invoke-static {v1}, Lcom/laiwang/protocol/android/u;->j(Lcom/laiwang/protocol/android/u;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/android/u$3;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/u$3;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/laiwang/protocol/android/u$3;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[io] T_B write err >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/laiwang/protocol/android/u$3;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    iget-object v1, p0, Lcom/laiwang/protocol/android/u$3;->b:Lcom/laiwang/protocol/android/u;

    invoke-virtual {v1, v0}, Lcom/laiwang/protocol/android/u;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
