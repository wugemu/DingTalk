.class final Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;
.super Ljava/lang/Object;
.source "MapBrowserFragment.java"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

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
    .line 147
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->c(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)I

    move-result v0

    if-gez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcir;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->d(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)I

    goto :goto_0
.end method

.method public final onSuccess(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->a:Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcir;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 141
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->a(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;DD)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment$1;->b:Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->b(Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;)Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/ProgressTextBar;->setVisibility(I)V

    .line 143
    return-void
.end method
