.class public Lcom/alibaba/android/user/namecard/base/BaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lfsd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfsi;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lfsh;

.field private d:Landroid/view/animation/Interpolator;

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->d:Landroid/view/animation/Interpolator;

    .line 54
    const/16 v0, 0x12c

    iput v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->e:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->f:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->g:I

    .line 48
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->b:Landroid/content/Context;

    .line 49
    new-instance v0, Lfsg;

    invoke-direct {v0}, Lfsg;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->c:Lfsh;

    .line 50
    return-void
.end method

.method private a(I)Lfsi;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsi;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfsi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lfsi;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a(I)Lfsi;

    move-result-object v0

    .line 146
    .local v0, "item":Lfsi;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->c:Lfsh;

    invoke-interface {v0, v1}, Lfsi;->a(Lfsh;)I

    move-result v1

    .line 150
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lfsd;

    .line 1089
    if-eqz p1, :cond_0

    .line 1093
    invoke-direct {p0, p2}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->a(I)Lfsi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfsd;->a(Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 20
    .line 2082
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->c:Lfsh;

    invoke-interface {v0, p2}, Lfsh;->a(I)I

    move-result v0

    .line 2083
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2084
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->c:Lfsh;

    invoke-interface {v1, p2, v0}, Lfsh;->a(ILandroid/view/View;)Lfsd;

    move-result-object v0

    .line 20
    return-object v0
.end method
