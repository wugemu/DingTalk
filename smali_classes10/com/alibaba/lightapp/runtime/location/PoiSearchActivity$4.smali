.class final Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;
.super Ljava/lang/Object;
.source "PoiSearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    if-lez p3, :cond_0

    if-lez p2, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->h(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lhku;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lhku$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->i(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lhku$a;

    move-result-object v0

    iget v0, v0, Lhku$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->e(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->j(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I

    .line 247
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->k(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I

    .line 248
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->h(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Lhku;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->e(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I

    move-result v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$4;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->b(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$a;-><init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;I)V

    invoke-virtual {v0, v1, v2}, Lhku;->a(ILcom/alibaba/wukong/Callback;)V

    .line 252
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 239
    return-void
.end method
