.class final Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;
.super Landroid/widget/BaseAdapter;
.source "PoiSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 282
    if-nez p2, :cond_0

    .line 283
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lhdn$i;->list_item_map_poi:I

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 286
    :cond_0
    sget v5, Lhdn$h;->poiitem_name:I

    invoke-static {p2, v5}, Lhko;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 287
    .local v3, "poiName":Landroid/widget/TextView;
    sget v5, Lhdn$h;->poiitem_addr:I

    invoke-static {p2, v5}, Lhko;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 289
    .local v1, "poiAddress":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity$b;->a:Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;->f(Lcom/alibaba/lightapp/runtime/location/PoiSearchActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/core/PoiItem;

    .line 291
    .local v2, "poiItem":Lcom/amap/api/services/core/PoiItem;
    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "provinceName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "cityName":Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    new-array v5, v10, [Ljava/lang/String;

    aput-object v0, v5, v7

    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getAdName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :goto_0
    return-object p2

    .line 298
    :cond_1
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getAdName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
