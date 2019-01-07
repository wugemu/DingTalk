.class public final Lvz;
.super Ljava/io/InputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lvz;->a:Ljava/io/InputStream;

    .line 21
    iput p2, p0, Lvz;->b:I

    .line 22
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 27
    iget v0, p0, Lvz;->b:I

    iget v1, p0, Lvz;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 33
    iget v0, p0, Lvz;->c:I

    iget v1, p0, Lvz;->b:I

    if-ge v0, v1, :cond_0

    .line 35
    iget v0, p0, Lvz;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvz;->c:I

    .line 36
    iget-object v0, p0, Lvz;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lvz;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 47
    iget v2, p0, Lvz;->c:I

    iget v3, p0, Lvz;->b:I

    if-ge v2, v3, :cond_1

    .line 49
    iget-object v2, p0, Lvz;->a:Ljava/io/InputStream;

    iget v3, p0, Lvz;->b:I

    iget v4, p0, Lvz;->c:I

    sub-int/2addr v3, v4

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 50
    .local v0, "d":I
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 62
    .end local v0    # "d":I
    :goto_0
    return v0

    .line 56
    .restart local v0    # "d":I
    :cond_0
    iget v1, p0, Lvz;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lvz;->c:I

    goto :goto_0

    .end local v0    # "d":I
    :cond_1
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "FixedLengthInputStream(in=%s, length=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lvz;->a:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lvz;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
