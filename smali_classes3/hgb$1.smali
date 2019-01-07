.class final Lhgb$1;
.super Ljava/lang/Object;
.source "LightBeaconManager.java"

# interfaces
.implements Lhgd$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgb;


# direct methods
.method constructor <init>(Lhgb;)V
    .locals 0
    .param p1, "this$0"    # Lhgb;

    .prologue
    .line 89
    iput-object p1, p0, Lhgb$1;->a:Lhgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Region;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    const-string/jumbo v1, "THREAD"

    .line 94
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 96
    .local v0, "beaconThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lhgb$1$1;

    invoke-direct {v1, p0, p1}, Lhgb$1$1;-><init>(Lhgb$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 129
    .end local v0    # "beaconThread":Lcom/alibaba/doraemon/threadpool/Thread;
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string/jumbo v1, "SW"

    const-string/jumbo v2, "getListMonitorBeacon"

    const-string/jumbo v3, "region is not correct, disable mRegionBootstrap"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lhgb$1;->a:Lhgb;

    invoke-static {v1}, Lhgb;->a(Lhgb;)Lhgc;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lhgb$1;->a:Lhgb;

    invoke-static {v1}, Lhgb;->a(Lhgb;)Lhgc;

    move-result-object v1

    invoke-virtual {v1}, Lhgc;->a()V

    .line 125
    :cond_1
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v1

    const-string/jumbo v2, "beacon_checkin_is_open"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcnh;->c(Ljava/lang/String;Z)V

    .line 127
    const-string/jumbo v1, "SW"

    const/4 v2, 0x0

    const-string/jumbo v3, "getListMonitorBeacon regions is null !!!"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
