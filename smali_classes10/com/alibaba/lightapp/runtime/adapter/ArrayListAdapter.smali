.class public abstract Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;
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
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    .local p0, "this":Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;, "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
    .line 22
    .local p0, "this":Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;, "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->b:Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->a:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;, "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->a:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;, "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->a:Ljava/util/List;

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
    .local p0, "this":Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;, "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter<TT;>;"
    const/4 v0, 0x0

    .line 81
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;->a:Ljava/util/List;

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
    .line 93
    .local p0, "this":Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;, "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method
