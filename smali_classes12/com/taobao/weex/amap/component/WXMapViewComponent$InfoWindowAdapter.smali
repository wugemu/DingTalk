.class Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoWindowAdapter"
.end annotation


# instance fields
.field private mWXMapViewComponent:Lcom/taobao/weex/amap/component/WXMapViewComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0
    .param p1, "wxMapViewComponent"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;->mWXMapViewComponent:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    .line 660
    return-void
.end method

.method private render(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 5
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x2

    .line 673
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;->mWXMapViewComponent:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v2}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$1700(Lcom/taobao/weex/amap/component/WXMapViewComponent;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;

    .line 674
    .local v1, "wxMapInfoWindowComponent":Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;
    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {v1}, Lcom/taobao/weex/amap/component/WXMapInfoWindowComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    .line 676
    .local v0, "host":Lcom/taobao/weex/ui/view/WXFrameLayout;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 677
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 678
    const-string/jumbo v2, "WXMapViewComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Info size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .end local v0    # "host":Lcom/taobao/weex/ui/view/WXFrameLayout;
    :goto_0
    return-object v0

    .line 681
    :cond_0
    const-string/jumbo v2, "WXMapViewComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "WXMapInfoWindowComponent with marker id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInfoContents(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;->render(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/taobao/weex/amap/component/WXMapViewComponent$InfoWindowAdapter;->render(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
