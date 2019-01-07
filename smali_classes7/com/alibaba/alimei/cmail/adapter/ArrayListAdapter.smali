.class public abstract Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->e:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 102
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v0, "copyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_0
    iput-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    .line 36
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d(Ljava/util/List;)V

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 38
    return-void

    .line 31
    .end local v0    # "copyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->a()V

    .line 100
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    const/4 v0, 0x0

    .line 78
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    .local p0, "this":Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;, "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method
