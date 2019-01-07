.class public final Lwa;
.super Ljava/io/FilterOutputStream;
.source "LineWrapOutputStream.java"


# static fields
.field private static final a:[B


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lwa;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "maxLineLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    iput v0, p0, Lwa;->c:I

    .line 13
    iput v0, p0, Lwa;->d:I

    .line 14
    iput v0, p0, Lwa;->e:I

    .line 20
    add-int/lit8 v0, p2, -0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lwa;->b:[B

    .line 21
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 89
    iget v0, p0, Lwa;->d:I

    iget v2, p0, Lwa;->c:I

    if-le v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lwa;->b:[B

    iget v3, p0, Lwa;->c:I

    iget v4, p0, Lwa;->d:I

    iget v5, p0, Lwa;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 95
    iget v0, p0, Lwa;->d:I

    iget-object v2, p0, Lwa;->b:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lwa;->c:I

    .line 96
    iput v1, p0, Lwa;->e:I

    .line 98
    :cond_0
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 99
    return-void

    .line 95
    :cond_1
    iget v0, p0, Lwa;->d:I

    goto :goto_0
.end method

.method public final write(I)V
    .locals 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 27
    iget v0, p0, Lwa;->d:I

    iget-object v1, p0, Lwa;->b:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 30
    iget v0, p0, Lwa;->e:I

    if-lez v0, :cond_4

    .line 33
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lwa;->b:[B

    iget v2, p0, Lwa;->c:I

    iget v3, p0, Lwa;->e:I

    iget v4, p0, Lwa;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 34
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    sget-object v1, Lwa;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 36
    iput v5, p0, Lwa;->c:I

    .line 39
    iget v0, p0, Lwa;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lwa;->e:I

    .line 40
    iget-object v0, p0, Lwa;->b:[B

    array-length v0, v0

    iget v1, p0, Lwa;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lwa;->d:I

    .line 41
    iget v0, p0, Lwa;->d:I

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lwa;->b:[B

    iget v1, p0, Lwa;->e:I

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lwa;->b:[B

    iget v3, p0, Lwa;->d:I

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    :cond_0
    iput v5, p0, Lwa;->e:I

    .line 58
    :cond_1
    :goto_0
    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 61
    :cond_2
    iget v0, p0, Lwa;->d:I

    iget v1, p0, Lwa;->c:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_3

    .line 63
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lwa;->b:[B

    iget v2, p0, Lwa;->c:I

    iget v3, p0, Lwa;->d:I

    iget v4, p0, Lwa;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    :cond_3
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 67
    iput v5, p0, Lwa;->d:I

    .line 68
    iput v5, p0, Lwa;->c:I

    .line 69
    iput v5, p0, Lwa;->e:I

    .line 83
    :goto_1
    return-void

    .line 51
    :cond_4
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lwa;->b:[B

    iget v2, p0, Lwa;->c:I

    iget-object v3, p0, Lwa;->b:[B

    array-length v3, v3

    iget v4, p0, Lwa;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 52
    iget-object v0, p0, Lwa;->out:Ljava/io/OutputStream;

    sget-object v1, Lwa;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 53
    iput v5, p0, Lwa;->d:I

    .line 54
    iput v5, p0, Lwa;->c:I

    goto :goto_0

    .line 74
    :cond_5
    const/16 v0, 0x20

    if-ne p1, v0, :cond_6

    .line 76
    iget v0, p0, Lwa;->d:I

    iput v0, p0, Lwa;->e:I

    .line 80
    :cond_6
    iget-object v0, p0, Lwa;->b:[B

    iget v1, p0, Lwa;->d:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 81
    iget v0, p0, Lwa;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lwa;->d:I

    goto :goto_1
.end method
