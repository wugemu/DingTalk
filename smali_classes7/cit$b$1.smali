.class final Lcit$b$1;
.super Ljava/lang/Object;
.source "WifiScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcit$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/wifi/WifiManager;

.field final synthetic b:Lcit$b;


# direct methods
.method constructor <init>(Lcit$b;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$1"    # Lcit$b;

    .prologue
    .line 205
    iput-object p1, p0, Lcit$b$1;->b:Lcit$b;

    iput-object p2, p0, Lcit$b$1;->a:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 209
    :try_start_0
    iget-object v4, p0, Lcit$b$1;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 210
    .local v1, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v4, p0, Lcit$b$1;->b:Lcit$b;

    iget-object v4, v4, Lcit$b;->a:Lcit;

    .line 1034
    iput-object v1, v4, Lcit;->d:Ljava/util/List;

    .line 211
    iget-object v4, p0, Lcit$b$1;->b:Lcit$b;

    iget-object v4, v4, Lcit$b;->a:Lcit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2034
    iput-wide v6, v4, Lcit;->c:J

    .line 212
    const-string/jumbo v4, "dingtalkbase"

    const-string/jumbo v5, "wifiscan"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "scanResult.size:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    if-nez v1, :cond_2

    .line 213
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string/jumbo v7, "cache:"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    iget-object v7, p0, Lcit$b$1;->b:Lcit$b;

    iget-object v7, v7, Lcit$b;->a:Lcit;

    .line 3034
    iget-wide v8, v7, Lcit;->c:J

    .line 214
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 213
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    if-eqz v1, :cond_1

    .line 218
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 219
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_0

    .line 220
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 223
    const-string/jumbo v4, "dingtalkbase"

    const-string/jumbo v5, "wifiscan"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "scanResult.BSSID"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " timestamp:"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcit$b$1;->b:Lcit$b;

    iget-object v8, v8, Lcit$b;->a:Lcit;

    iget-wide v8, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 4251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    add-long/2addr v8, v10

    .line 224
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 223
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 229
    .end local v0    # "scanResult":Landroid/net/wifi/ScanResult;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v4, "wifiscan log"

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcit$b$1$1;

    invoke-direct {v4, p0, v1}, Lcit$b$1$1;-><init>(Lcit$b$1;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 241
    .end local v1    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :goto_2
    return-void

    .line 213
    .restart local v1    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto/16 :goto_0

    .line 238
    .end local v1    # "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catch_1
    move-exception v2

    .line 239
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v4, "wifiscan"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "thread result parse err "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
