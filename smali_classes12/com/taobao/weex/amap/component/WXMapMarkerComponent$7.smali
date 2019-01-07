.class Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;
.super Ljava/lang/Object;
.source "WXMapMarkerComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapMarkerComponent;->setMarkerIcon(Lcom/amap/api/maps/model/Marker;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

.field final synthetic val$descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field final synthetic val$mMarker:Lcom/amap/api/maps/model/Marker;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapMarkerComponent;Lcom/amap/api/maps/model/Marker;Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;->this$0:Lcom/taobao/weex/amap/component/WXMapMarkerComponent;

    iput-object p2, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;->val$mMarker:Lcom/amap/api/maps/model/Marker;

    iput-object p3, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;->val$descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;->val$mMarker:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/taobao/weex/amap/component/WXMapMarkerComponent$7;->val$descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 216
    return-void
.end method
