.class public abstract Lrp;
.super Landroid/widget/BaseAdapter;
.source "BaseQuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "H:",
        "Lrr;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Z

.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I

    .prologue
    .line 31
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrp;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrp;->a:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrp;->c:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lrp;->b:Landroid/content/Context;

    .line 37
    iput p2, p0, Lrp;->d:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 155
    .line 2099
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "replace index can not be negative or greater than data size, index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrp;->c:Ljava/util/List;

    .line 2102
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(ILandroid/view/View;I)Lrr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "I)TH;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    invoke-virtual {p0}, Lrp;->b()V

    .line 166
    invoke-virtual {p0}, Lrp;->notifyDataSetChanged()V

    .line 167
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-void
.end method

.method public abstract a(Lrr;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;TT;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 0

    .prologue
    .line 171
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_0
    invoke-virtual {p0}, Lrp;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 73
    .line 1094
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    invoke-virtual {p0, p1}, Lrp;->getItemViewType(I)I

    move-result v2

    .line 1095
    if-nez v2, :cond_1

    iget v1, p0, Lrp;->d:I

    .line 74
    .local v1, "layoutRes":I
    :goto_0
    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {p0, p1, p2, v1}, Lrp;->a(ILandroid/view/View;I)Lrr;

    move-result-object v0

    .line 76
    .local v0, "helper":Lrr;, "TH;"
    iget-object v2, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lrp;->a(Lrr;Ljava/lang/Object;)V

    .line 1227
    iget-object p2, v0, Lrr;->b:Landroid/view/View;

    .line 2088
    .end local v0    # "helper":Lrr;, "TH;"
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object p2

    .line 1095
    .end local v1    # "layoutRes":I
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2083
    .restart local v1    # "layoutRes":I
    :cond_2
    if-nez p2, :cond_0

    .line 2084
    new-instance p2, Landroid/widget/FrameLayout;

    .end local p2    # "view":Landroid/view/View;
    iget-object v2, p0, Lrp;->b:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2085
    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 2086
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lrp;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 2087
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    .local p0, "this":Lrp;, "Lrp<TT;TH;>;"
    iget-object v0, p0, Lrp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
