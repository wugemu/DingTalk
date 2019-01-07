.class public final Lksb;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# instance fields
.field private a:Ljava/io/PushbackInputStream;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 51
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lksb;-><init>(Ljava/io/InputStream;I)V

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x3

    .line 62
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lksb;->b:I

    .line 41
    iput v2, p0, Lksb;->c:I

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    .line 65
    iput v2, p0, Lksb;->c:I

    .line 66
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 76
    return-void
.end method

.method public final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0xd

    const/4 v2, -0x1

    const/16 v4, 0xa

    .line 83
    iget-object v3, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 85
    .local v0, "b":I
    if-ne v0, v2, :cond_0

    .line 104
    :goto_0
    return v2

    .line 89
    :cond_0
    iget v3, p0, Lksb;->c:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    if-ne v0, v5, :cond_3

    .line 90
    iget-object v3, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 91
    .local v1, "c":I
    if-eq v1, v2, :cond_1

    .line 92
    iget-object v2, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 94
    :cond_1
    if-eq v1, v4, :cond_2

    .line 95
    iget-object v2, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 102
    .end local v1    # "c":I
    :cond_2
    :goto_1
    iput v0, p0, Lksb;->b:I

    move v2, v0

    .line 104
    goto :goto_0

    .line 97
    :cond_3
    iget v2, p0, Lksb;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    iget v2, p0, Lksb;->b:I

    if-eq v2, v5, :cond_2

    .line 98
    const/16 v0, 0xd

    .line 99
    iget-object v2, p0, Lksb;->a:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1
.end method
