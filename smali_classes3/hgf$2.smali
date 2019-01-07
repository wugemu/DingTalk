.class final Lhgf$2;
.super Ljava/lang/Object;
.source "DeviceListUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgf;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lhiv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhgf;


# direct methods
.method constructor <init>(Lhgf;)V
    .locals 0
    .param p1, "this$0"    # Lhgf;

    .prologue
    .line 192
    iput-object p1, p0, Lhgf$2;->a:Lhgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 192
    check-cast p1, Lhiv;

    .line 1196
    if-eqz p1, :cond_2

    iget-object v0, p1, Lhiv;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1197
    const-string/jumbo v0, "Beacon"

    const-string/jumbo v1, "DeviceList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[Device Beacon] requestDeviceList success, devices:"

    aput-object v4, v2, v3

    iget-object v3, p0, Lhgf$2;->a:Lhgf;

    iget-object v3, p1, Lhiv;->a:Ljava/util/List;

    .line 2038
    invoke-static {v3}, Lhgf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1198
    aput-object v3, v2, v5

    .line 1197
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :goto_0
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    .line 1204
    iget-object v2, p0, Lhgf$2;->a:Lhgf;

    .line 3038
    iget-object v2, v2, Lhgf;->a:Ljava/lang/Long;

    .line 1204
    if-eqz v2, :cond_1

    iget-object v2, p0, Lhgf$2;->a:Lhgf;

    .line 4038
    iget-object v2, v2, Lhgf;->a:Ljava/lang/Long;

    .line 1204
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1205
    iget-object v0, p0, Lhgf$2;->a:Lhgf;

    .line 5038
    iget-object v0, v0, Lhgf;->b:Ljava/util/List;

    .line 1205
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1206
    if-eqz p1, :cond_0

    iget-object v0, p1, Lhiv;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lhgf$2;->a:Lhgf;

    .line 6038
    iget-object v0, v0, Lhgf;->b:Ljava/util/List;

    .line 1207
    iget-object v1, p1, Lhiv;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1209
    :cond_0
    iget-object v0, p0, Lhgf$2;->a:Lhgf;

    .line 7038
    iput-boolean v5, v0, Lhgf;->d:Z

    .line 1210
    const-string/jumbo v0, "device_request_key"

    invoke-static {v0, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1212
    const-string/jumbo v0, "device_last_request_time_key"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1213
    iget-object v0, p0, Lhgf$2;->a:Lhgf;

    .line 8038
    invoke-virtual {v0}, Lhgf;->b()V

    .line 1215
    iget-object v0, p0, Lhgf$2;->a:Lhgf;

    .line 9038
    invoke-virtual {v0}, Lhgf;->d()V

    .line 1217
    :cond_1
    iget-object v0, p0, Lhgf$2;->a:Lhgf;

    .line 10038
    const/4 v1, 0x0

    iput-object v1, v0, Lhgf;->a:Ljava/lang/Long;

    .line 192
    return-void

    .line 1200
    :cond_2
    const-string/jumbo v0, "Beacon"

    const-string/jumbo v1, "DeviceList"

    const-string/jumbo v2, "[Device Beacon] requestDeviceList success, not devices"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 225
    const-string/jumbo v0, "Beacon"

    const-string/jumbo v1, "DeviceList"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[Device Beacon] requestDeviceList fail, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lhgf$2;->a:Lhgf;

    .line 1038
    const/4 v1, 0x0

    iput-object v1, v0, Lhgf;->a:Ljava/lang/Long;

    .line 228
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 221
    return-void
.end method
