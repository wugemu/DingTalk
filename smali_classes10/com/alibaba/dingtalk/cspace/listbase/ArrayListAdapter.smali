.class public abstract Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
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
.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

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
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->m:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
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
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .local v0, "copyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_0
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->notifyDataSetChanged()V

    .line 36
    return-void

    .line 30
    .end local v0    # "copyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    const/4 v0, 0x0

    .line 73
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    .local p0, "this":Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;, "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method
