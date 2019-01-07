.class final Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;
.super Ljava/lang/Object;
.source "GMapBrowserFragment.java"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/amap/api/location/AMapLocation;)V
    .locals 2
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->g(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)I

    move-result v0

    if-gez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->e(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcir;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 415
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->h(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)I

    goto :goto_0
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->e(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcir;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 407
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;DD)V

    .line 408
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment$2;->b:Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->f(Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 409
    return-void
.end method
