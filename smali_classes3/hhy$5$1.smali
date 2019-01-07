.class final Lhhy$5$1;
.super Ljava/lang/Object;
.source "HpmAccessor.java"

# interfaces
.implements Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhhy$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
        "<",
        "Lcom/alipay/android/h5appmanager/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhhy$5;


# direct methods
.method constructor <init>(Lhhy$5;)V
    .locals 0
    .param p1, "this$1"    # Lhhy$5;

    .prologue
    .line 422
    iput-object p1, p0, Lhhy$5$1;->a:Lhhy$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDone(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 422
    check-cast p2, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 1430
    if-eqz p1, :cond_0

    .line 1431
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1433
    :cond_0
    iget-object v0, p2, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    .line 1434
    if-eqz v0, :cond_1

    const-string/jumbo v1, "home"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    iget-object v0, p0, Lhhy$5$1;->a:Lhhy$5;

    iget-object v0, v0, Lhhy$5;->a:Lhhy;

    invoke-static {v0, p2}, Lhhy;->a(Lhhy;Lcom/alipay/android/h5appmanager/AppInfo;)V

    .line 1438
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1439
    const-string/jumbo v1, "version"

    invoke-virtual {p2}, Lcom/alipay/android/h5appmanager/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "oa_process_version_check"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final onProgressUpdated(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newProgress"    # I

    .prologue
    .line 426
    return-void
.end method
