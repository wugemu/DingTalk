.class public abstract Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonBaseAdapter.java"


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
.field protected b:Landroid/content/Context;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    .local p0, "this":Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;, "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->b:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->d:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;, "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter<TT;>;"
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;, "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter<TT;>;"
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->notifyDataSetChanged()V

    .line 46
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;, "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;, "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    .local p0, "this":Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;, "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method
