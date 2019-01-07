.class public final Lnj;
.super Lnn;
.source "CharBuffer.java"


# instance fields
.field transient a:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lnn;-><init>()V

    .line 36
    iput-object p1, p0, Lnj;->a:Ljava/io/Reader;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Lnj;->b()V

    .line 44
    :goto_0
    iget-object v0, p0, Lnj;->e:Lnk;

    iget v0, v0, Lnk;->b:I

    iget v1, p0, Lnj;->c:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lnj;->e:Lnk;

    iget-object v1, p0, Lnj;->a:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lnk;->a(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lantlr/CharStreamIOException;

    invoke-direct {v1, v0}, Lantlr/CharStreamIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 51
    :cond_0
    return-void
.end method
