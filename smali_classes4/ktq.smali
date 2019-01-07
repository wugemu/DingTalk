.class public final Lktq;
.super Lktr;


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lktr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Lktq;->c()I

    move-result v0

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lktq;->a:[B

    iget v1, p0, Lktq;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lktq;->a(I)V

    :cond_1
    return p3
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lktq;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lktq;->b:I

    return-void
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lktq;->a:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lktq;->b:I

    return v0
.end method

.method public final b([BII)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No writing allowed!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget v0, p0, Lktq;->c:I

    iget v1, p0, Lktq;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
