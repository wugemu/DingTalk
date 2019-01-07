.class Lcom/taobao/weex/amap/component/WXMapViewComponent$3;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    if-eqz p1, :cond_1

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$3;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    .line 151
    .local v0, "child":Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
    invoke-virtual {v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getMarker()Lcom/amap/api/maps/model/Marker;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->getMarker()Lcom/amap/api/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->onClick()V

    .line 148
    .end local v0    # "child":Lcom/taobao/weex/amap/component/WXMapMarkerComponent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
