.class final Lcom/alibaba/android/user/external/list/EditExternalActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "EditExternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/EditExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/EditExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/EditExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/EditExternalActivity;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    .line 291
    if-nez p2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string/jumbo v8, "com.workapp.action.poi_info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 295
    const-string/jumbo v8, "poi_info_key"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/PoiItem;

    .line 296
    .local v1, "poiItem":Lcom/amap/api/services/core/PoiItem;
    if-eqz v1, :cond_0

    .line 297
    const-string/jumbo v8, "map_longitude"

    invoke-virtual {p2, v8, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 298
    .local v4, "longitude":D
    cmpl-double v8, v4, v6

    if-nez v8, :cond_2

    .line 299
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    .line 301
    :cond_2
    :goto_1
    const-string/jumbo v8, "map_latitude"

    invoke-virtual {p2, v8, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 302
    .local v2, "latitude":D
    cmpl-double v8, v2, v6

    if-nez v8, :cond_3

    .line 303
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    .line 305
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-static {v6, v4, v5}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->a(Lcom/alibaba/android/user/external/list/EditExternalActivity;D)D

    .line 306
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-static {v6, v2, v3}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b(Lcom/alibaba/android/user/external/list/EditExternalActivity;D)D

    .line 307
    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    .line 308
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const-string/jumbo v6, ""

    :goto_3
    aput-object v6, v7, v10

    const/4 v8, 0x1

    .line 309
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    const-string/jumbo v6, ""

    :goto_4
    aput-object v6, v7, v8

    const/4 v8, 0x2

    .line 310
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getAdName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    const-string/jumbo v6, ""

    :goto_5
    aput-object v6, v7, v8

    const/4 v8, 0x3

    .line 311
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    const-string/jumbo v6, ""

    :goto_6
    aput-object v6, v7, v8

    .line 307
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->b(Lcom/alibaba/android/user/external/list/EditExternalActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->c(Lcom/alibaba/android/user/external/list/EditExternalActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/EditExternalActivity$4;->a:Lcom/alibaba/android/user/external/list/EditExternalActivity;

    invoke-static {v6, v10}, Lcom/alibaba/android/user/external/list/EditExternalActivity;->a(Lcom/alibaba/android/user/external/list/EditExternalActivity;Z)V

    goto/16 :goto_0

    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "latitude":D
    :cond_4
    move-wide v4, v6

    .line 299
    goto :goto_1

    .restart local v2    # "latitude":D
    :cond_5
    move-wide v2, v6

    .line 303
    goto :goto_2

    .line 308
    :cond_6
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 309
    :cond_7
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 310
    :cond_8
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getAdName()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 311
    :cond_9
    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v6

    goto :goto_6
.end method
