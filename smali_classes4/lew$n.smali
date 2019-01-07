.class public abstract Llew$n;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "n"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 406
    invoke-direct {p0}, Llew;-><init>()V

    .line 407
    iput p1, p0, Llew$n;->a:I

    .line 408
    iput p2, p0, Llew$n;->b:I

    .line 409
    return-void
.end method


# virtual methods
.method protected abstract a(Lleh;)I
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Lleh;Lleh;)Z
    .locals 6
    .param p1, "root"    # Lleh;
    .param p2, "element"    # Lleh;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 416
    .line 1139
    iget-object v0, p2, Lleh;->d:Llej;

    check-cast v0, Lleh;

    .line 417
    .local v0, "p":Lleh;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/jsoup/nodes/Document;

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 422
    :cond_1
    :goto_0
    return v2

    .line 419
    :cond_2
    invoke-virtual {p0, p2}, Llew$n;->a(Lleh;)I

    move-result v1

    .line 420
    .local v1, "pos":I
    iget v4, p0, Llew$n;->a:I

    if-nez v4, :cond_3

    iget v4, p0, Llew$n;->b:I

    if-eq v1, v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 422
    :cond_3
    iget v4, p0, Llew$n;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Llew$n;->a:I

    mul-int/2addr v4, v5

    if-ltz v4, :cond_4

    iget v4, p0, Llew$n;->b:I

    sub-int v4, v1, v4

    iget v5, p0, Llew$n;->a:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 427
    iget v0, p0, Llew$n;->a:I

    if-nez v0, :cond_0

    .line 428
    const-string/jumbo v0, ":%s(%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Llew$n;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Llew$n;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    .line 429
    :cond_0
    iget v0, p0, Llew$n;->b:I

    if-nez v0, :cond_1

    .line 430
    const-string/jumbo v0, ":%s(%dn)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Llew$n;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Llew$n;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_1
    const-string/jumbo v0, ":%s(%dn%+d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Llew$n;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Llew$n;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Llew$n;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
