.class Lcom/taobao/weex/amap/component/WXMapViewComponent$2$1;
.super Ljava/lang/Object;
.source "WXMapViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/amap/component/WXMapViewComponent$2;->onMapLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/amap/component/WXMapViewComponent$2;


# direct methods
.method constructor <init>(Lcom/taobao/weex/amap/component/WXMapViewComponent$2;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2$1;->this$1:Lcom/taobao/weex/amap/component/WXMapViewComponent$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2$1;->this$1:Lcom/taobao/weex/amap/component/WXMapViewComponent$2;

    iget-object v0, v0, Lcom/taobao/weex/amap/component/WXMapViewComponent$2;->this$0:Lcom/taobao/weex/amap/component/WXMapViewComponent;

    invoke-static {v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->access$600(Lcom/taobao/weex/amap/component/WXMapViewComponent;)V

    .line 135
    return-void
.end method
