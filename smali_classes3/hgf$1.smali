.class final Lhgf$1;
.super Ljava/lang/Object;
.source "DeviceListUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgf;


# direct methods
.method constructor <init>(Lhgf;)V
    .locals 0
    .param p1, "this$0"    # Lhgf;

    .prologue
    .line 57
    iput-object p1, p0, Lhgf$1;->a:Lhgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public final onEnterForeground()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 65
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v2, "device_last_request_time_key"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 70
    .local v0, "lastRequestTime":J
    iget-object v2, p0, Lhgf$1;->a:Lhgf;

    .line 1038
    iget-boolean v2, v2, Lhgf;->d:Z

    .line 70
    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 71
    :cond_2
    iget-object v2, p0, Lhgf$1;->a:Lhgf;

    .line 2038
    iget-boolean v2, v2, Lhgf;->d:Z

    .line 71
    if-eqz v2, :cond_3

    .line 72
    const-string/jumbo v2, "Beacon"

    const-string/jumbo v3, "DeviceList"

    const-string/jumbo v4, "[Device Beacon] last request time over 24h, update device list"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    iget-object v2, p0, Lhgf$1;->a:Lhgf;

    .line 3038
    invoke-virtual {v2}, Lhgf;->c()V

    goto :goto_0
.end method
