.class final Lhek$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "AbsRecyclerAdapterWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhek;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic b:Lhek;


# direct methods
.method constructor <init>(Lhek;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lhek;

    .prologue
    .line 275
    .local p0, "this":Lhek$1;, "Lhek$1;"
    iput-object p1, p0, Lhek$1;->b:Lhek;

    iput-object p2, p0, Lhek$1;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 278
    .local p0, "this":Lhek$1;, "Lhek$1;"
    iget-object v1, p0, Lhek$1;->b:Lhek;

    invoke-virtual {v1, p1}, Lhek;->getItemViewType(I)I

    move-result v0

    .line 279
    .local v0, "viewType":I
    iget-object v1, p0, Lhek$1;->b:Lhek;

    iget-object v1, v1, Lhek;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhek$1;->b:Lhek;

    iget-object v1, v1, Lhek;->f:Ljava/util/Set;

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    iget-object v1, p0, Lhek$1;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 283
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
