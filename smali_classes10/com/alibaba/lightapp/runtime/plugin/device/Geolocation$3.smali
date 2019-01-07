.class Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;
.super Ljava/lang/Object;
.source "Geolocation.java"

# interfaces
.implements Lcio;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->getWithGoogle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

.field final synthetic val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$locationStart:J

.field final synthetic val$targetAccuracy:I


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Ljava/util/concurrent/atomic/AtomicInteger;IJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$targetAccuracy:I

    iput-wide p4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$locationStart:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)V
    .locals 8
    .param p1, "mapLocation"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 368
    const-string/jumbo v3, "lightapp"

    const-string/jumbo v4, "Geolocation"

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "location get onError times="

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 369
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v6, " errCode="

    aput-object v6, v5, v1

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .line 370
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 369
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v3, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-gtz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$locationStart:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v1, "accuracy"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "jsapi_device_geolocation_get_succ"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 385
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v1

    invoke-virtual {v1}, Lcip;->a()V

    .line 389
    :goto_2
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v3, "jsapi_device_geolocation_get_fail"

    invoke-interface {v1, v2, v3, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_2
.end method

.method public onSuccess(Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)V
    .locals 7
    .param p1, "mapLocation"    # Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 330
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "Geolocation"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "location get onSuccess isGps="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 331
    invoke-static {}, Lcis;->a()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " times="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 330
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcis;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getAccuracy()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$802(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .line 341
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getAccuracy()F

    move-result v1

    iget v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$targetAccuracy:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$locationStart:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v1, "accuracy"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "jsapi_device_geolocation_get_succ"

    invoke-interface {v1, v6, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 348
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v1

    invoke-virtual {v1}, Lcip;->a()V

    .line 364
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$integer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$802(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    .line 355
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$800(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$500(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$900(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;Ljava/lang/String;)V

    .line 356
    if-eqz p1, :cond_5

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .restart local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->val$locationStart:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "accuracy"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/amap/GMapLocation;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "jsapi_device_geolocation_get_succ"

    invoke-interface {v1, v6, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 362
    .end local v0    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v1

    invoke-virtual {v1}, Lcip;->a()V

    goto :goto_0
.end method
