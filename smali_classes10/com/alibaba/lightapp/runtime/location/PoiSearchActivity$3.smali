.class final Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$3;
.super Ljava/lang/Object;
.source "PoiSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 222
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$3;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$3;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/PoiItem;

    .line 228
    .local v1, "item":Lcom/amap/api/services/core/PoiItem;
    const-string/jumbo v2, "poi_item_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$3;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 230
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$3;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->finish()V

    .line 231
    return-void
.end method
