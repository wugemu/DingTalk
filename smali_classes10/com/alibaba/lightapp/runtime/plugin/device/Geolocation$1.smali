.class Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;
.super Ljava/lang/Object;
.source "Geolocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Lcom/amap/api/location/AMapLocationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$100(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v0

    .line 1165
    iget-object v1, v0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    if-eqz v1, :cond_1

    .line 1166
    iget-object v0, v0, Lcip;->c:Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b()Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Geolocation;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcip;->a(Landroid/content/Context;)Lcip;

    move-result-object v0

    .line 2142
    iget-object v1, v0, Lcip;->d:Ljava/util/Map;

    monitor-enter v1

    .line 2143
    :try_start_0
    iget-object v2, v0, Lcip;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2145
    iget-object v0, v0, Lcip;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;

    .line 2147
    if-eqz v0, :cond_2

    .line 2148
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/amap/GoogleLocationClient;->b()Z

    goto :goto_0

    .line 2153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
