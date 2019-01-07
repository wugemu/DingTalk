.class public final Lizh;
.super Ljava/lang/Object;
.source "PackerStack.java"


# instance fields
.field a:I

.field b:[B

.field c:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lizh;->a:I

    .line 18
    new-array v0, v2, [B

    iput-object v0, p0, Lizh;->b:[B

    .line 19
    new-array v0, v2, [I

    iput-object v0, p0, Lizh;->c:[I

    .line 20
    iget-object v0, p0, Lizh;->b:[B

    aput-byte v1, v0, v1

    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lizh;->c:[I

    iget v1, p0, Lizh;->a:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 56
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lizh;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lizh;->a:I

    .line 60
    return-void
.end method

.method public final c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lizh;->c:[I

    iget v1, p0, Lizh;->a:I

    aget v0, v0, v1

    return v0
.end method
