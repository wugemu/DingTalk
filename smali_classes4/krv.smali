.class public Lkrv;
.super Lkrq;
.source "SimpleNode.java"

# interfaces
.implements Lkrt;


# instance fields
.field protected c:Lkrt;

.field protected d:[Lkrt;

.field protected e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Lkrq;-><init>()V

    .line 17
    iput p1, p0, Lkrv;->e:I

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkrv;->d:[Lkrt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkrv;->d:[Lkrt;

    array-length v0, v0

    goto :goto_0
.end method

.method public final a(I)Lkrt;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lkrv;->d:[Lkrt;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lkrt;)V
    .locals 0
    .param p1, "n"    # Lkrt;

    .prologue
    .line 31
    iput-object p1, p0, Lkrv;->c:Lkrt;

    return-void
.end method

.method public final a(Lkrt;I)V
    .locals 4
    .param p1, "n"    # Lkrt;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v1, p0, Lkrv;->d:[Lkrt;

    if-nez v1, :cond_1

    .line 36
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Lkrt;

    iput-object v1, p0, Lkrv;->d:[Lkrt;

    .line 42
    :cond_0
    :goto_0
    iget-object v1, p0, Lkrv;->d:[Lkrt;

    aput-object p1, v1, p2

    .line 43
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lkrv;->d:[Lkrt;

    array-length v1, v1

    if-lt p2, v1, :cond_0

    .line 38
    add-int/lit8 v1, p2, 0x1

    new-array v0, v1, [Lkrt;

    .line 39
    .local v0, "c":[Lkrt;
    iget-object v1, p0, Lkrv;->d:[Lkrt;

    iget-object v2, p0, Lkrv;->d:[Lkrt;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v0, p0, Lkrv;->d:[Lkrt;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    sget-object v0, Lkrp;->f:[Ljava/lang/String;

    iget v1, p0, Lkrv;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method
