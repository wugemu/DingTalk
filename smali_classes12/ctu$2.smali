.class final Lctu$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "AbsRecyclerAdapterWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lctu;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic b:Lctu;


# direct methods
.method constructor <init>(Lctu;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lctu;

    .prologue
    .line 202
    .local p0, "this":Lctu$2;, "Lctu$2;"
    iput-object p1, p0, Lctu$2;->b:Lctu;

    iput-object p2, p0, Lctu$2;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    .local p0, "this":Lctu$2;, "Lctu$2;"
    iget-object v1, p0, Lctu$2;->b:Lctu;

    invoke-virtual {v1, p1}, Lctu;->getItemViewType(I)I

    move-result v0

    .line 206
    .local v0, "viewType":I
    iget-object v1, p0, Lctu$2;->b:Lctu;

    iget-object v1, v1, Lctu;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lctu$2;->b:Lctu;

    iget-object v1, v1, Lctu;->d:Ljava/util/Set;

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    iget-object v1, p0, Lctu$2;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 210
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
