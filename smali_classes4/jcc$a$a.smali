.class final Ljcc$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljcc$a;


# direct methods
.method private constructor <init>(Ljcc$a;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Ljcc$a$a;->a:Ljcc$a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Ljcc$a;Ljava/io/OutputStream;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljcc$a$a;-><init>(Ljcc$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Ljcc$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljcc$a$a;->a:Ljcc$a;

    .line 3000
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcc$a;->c:Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Ljcc$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljcc$a$a;->a:Ljcc$a;

    .line 4000
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcc$a;->c:Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Ljcc$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljcc$a$a;->a:Ljcc$a;

    .line 1000
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcc$a;->c:Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Ljcc$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljcc$a$a;->a:Ljcc$a;

    .line 2000
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljcc$a;->c:Z

    goto :goto_0
.end method
