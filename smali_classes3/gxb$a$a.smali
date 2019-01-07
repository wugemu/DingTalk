.class final Lgxb$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgxb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lgxb$a;


# direct methods
.method private constructor <init>(Lgxb$a;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 858
    iput-object p1, p0, Lgxb$a$a;->a:Lgxb$a;

    .line 859
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 860
    return-void
.end method

.method synthetic constructor <init>(Lgxb$a;Ljava/io/OutputStream;B)V
    .locals 0
    .param p1, "x0"    # Lgxb$a;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 857
    invoke-direct {p0, p1, p2}, Lgxb$a$a;-><init>(Lgxb$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 880
    :try_start_0
    iget-object v0, p0, Lgxb$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    iget-object v0, p0, Lgxb$a$a;->a:Lgxb$a;

    .line 3774
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgxb$a;->b:Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 888
    :try_start_0
    iget-object v0, p0, Lgxb$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    iget-object v0, p0, Lgxb$a$a;->a:Lgxb$a;

    .line 4774
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgxb$a;->b:Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 2
    .param p1, "oneByte"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 864
    :try_start_0
    iget-object v0, p0, Lgxb$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    iget-object v0, p0, Lgxb$a$a;->a:Lgxb$a;

    .line 1774
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgxb$a;->b:Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 872
    :try_start_0
    iget-object v0, p0, Lgxb$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    iget-object v0, p0, Lgxb$a$a;->a:Lgxb$a;

    .line 2774
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgxb$a;->b:Z

    goto :goto_0
.end method
