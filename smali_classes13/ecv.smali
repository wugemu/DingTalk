.class public abstract Lecv;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DtFormSmallAvatarGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter;"
    }
.end annotation


# virtual methods
.method public getItemCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lecv;, "Lecv<TT;>;"
    const/4 v1, 0x5

    .line 53
    const/4 v2, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    .local v0, "size":I
    if-le v0, v1, :cond_0

    move v0, v1

    .end local v0    # "size":I
    :cond_0
    return v0
.end method
