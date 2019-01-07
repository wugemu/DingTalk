.class public final Lik;
.super Ljava/lang/Object;
.source "ByteArray.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lik;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[B

.field b:I

.field public c:I


# direct methods
.method private constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "length"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    new-array p1, p2, [B

    .end local p1    # "bytes":[B
    :cond_0
    iput-object p1, p0, Lik;->a:[B

    .line 18
    iget-object v0, p0, Lik;->a:[B

    array-length v0, v0

    iput v0, p0, Lik;->b:I

    .line 19
    iput p2, p0, Lik;->c:I

    .line 20
    return-void
.end method

.method public static a(I)Lik;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 23
    new-instance v0, Lik;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lik;-><init>([BI)V

    .line 24
    .local v0, "byteArray":Lik;
    return-object v0
.end method

.method public static a([B)Lik;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p0, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    array-length v1, p0

    .line 1028
    if-eqz p0, :cond_0

    if-lez v1, :cond_0

    .line 1031
    new-instance v0, Lik;

    invoke-direct {v0, p0, v1}, Lik;-><init>([BI)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lik;->a:[B

    iget v3, p0, Lik;->b:I

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 66
    .local v0, "readLen":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :cond_0
    iput v1, p0, Lik;->c:I

    .line 67
    return v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lik;->b:I

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 2024
    :cond_0
    sget-object v0, Lil$a;->a:Lil;

    .line 61
    invoke-virtual {v0, p0}, Lil;->a(Lik;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lik;->a:[B

    const/4 v1, 0x0

    iget v2, p0, Lik;->c:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 11
    check-cast p1, Lik;

    .line 2076
    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p0, Lik;->b:I

    iget v1, p1, Lik;->b:I

    if-ne v0, v1, :cond_2

    .line 2077
    iget-object v0, p0, Lik;->a:[B

    if-nez v0, :cond_0

    .line 2078
    const/4 v0, -0x1

    .line 2082
    :goto_0
    return v0

    .line 2079
    :cond_0
    iget-object v0, p1, Lik;->a:[B

    if-nez v0, :cond_1

    .line 2080
    const/4 v0, 0x1

    goto :goto_0

    .line 2082
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2085
    :cond_2
    iget v0, p0, Lik;->b:I

    iget v1, p1, Lik;->b:I

    sub-int/2addr v0, v1

    .line 11
    goto :goto_0
.end method
