.class public abstract Llcn;
.super Lldd;
.source "Block.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lldd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lldd;
    .locals 1

    .prologue
    .line 3
    .line 1006
    invoke-super {p0}, Lldd;->a()Lldd;

    move-result-object v0

    check-cast v0, Llcn;

    .line 3
    return-object v0
.end method

.method protected final a(Lldd;)V
    .locals 2
    .param p1, "parent"    # Lldd;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 11
    instance-of v0, p1, Llcn;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parent of block must also be block (can not be inline)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lldd;->a(Lldd;)V

    .line 15
    return-void
.end method
