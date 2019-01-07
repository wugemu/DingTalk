.class final Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$2;
.super Ljava/lang/Object;
.source "GoogleLocationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b()Z
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
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$2;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$2;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$2;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->c(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient$2;->a:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->d(Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;)Lcom/google/android/gms/location/LocationListener;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 89
    return-void
.end method
