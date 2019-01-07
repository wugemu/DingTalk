.class final Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$1;
.super Ljava/lang/Object;
.source "GoogleLocationClient.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$1;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$1;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$1;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcin;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$1;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->a(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;Landroid/location/Location;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcin;->a(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)V

    .line 58
    :cond_0
    return-void
.end method
