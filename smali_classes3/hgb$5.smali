.class final Lhgb$5;
.super Lcmi;
.source "LightBeaconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgb;->a(Lcom/amap/api/location/AMapLocation;Lorg/altbeacon/beacon/Region;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhjw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/altbeacon/beacon/Region;

.field final synthetic b:J

.field final synthetic c:Lhgb;


# direct methods
.method constructor <init>(Lhgb;Lorg/altbeacon/beacon/Region;J)V
    .locals 1
    .param p1, "this$0"    # Lhgb;

    .prologue
    .line 429
    iput-object p1, p0, Lhgb$5;->c:Lhgb;

    iput-object p2, p0, Lhgb$5;->a:Lorg/altbeacon/beacon/Region;

    iput-wide p3, p0, Lhgb$5;->b:J

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 456
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "uploadLocByBeacon"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "uploadLocByBeacon exception "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lhgb$5;->c:Lhgb;

    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v1

    iget-object v2, p0, Lhgb$5;->a:Lorg/altbeacon/beacon/Region;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lhgb$5;->b:J

    invoke-static {v0, v1, v2, v3}, Lhgb;->b(Lhgb;Ljava/lang/String;J)V

    .line 458
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 429
    check-cast p1, Lhjw;

    .line 1432
    if-eqz p1, :cond_0

    .line 1433
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhgb$5$1;

    invoke-direct {v1, p0, p1}, Lhgb$5$1;-><init>(Lhgb$5;Lhjw;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1441
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1442
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1446
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.lightapp.runtime.checkin_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1447
    const-string/jumbo v1, "checkInType"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1450
    const-string/jumbo v0, "SW"

    const-string/jumbo v1, "uploadLocByBeacon"

    const-string/jumbo v2, "uploadLocByBeacon success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method
