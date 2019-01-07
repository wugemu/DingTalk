.class final Lbmc$5;
.super Ljava/lang/Object;
.source "QuickConnectWifiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmc;


# direct methods
.method constructor <init>(Lbmc;)V
    .locals 0
    .param p1, "this$0"    # Lbmc;

    .prologue
    .line 209
    iput-object p1, p0, Lbmc$5;->a:Lbmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 212
    iget-object v4, p0, Lbmc$5;->a:Lbmc;

    invoke-static {v4}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v4

    if-nez v4, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->h()Ljava/util/List;

    move-result-object v7

    .line 216
    .local v7, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v7, :cond_2

    .line 217
    const-string/jumbo v4, "QuickConnectWifiManager"

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v9, "scanResults is null"

    aput-object v9, v5, v0

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2
    if-nez v7, :cond_5

    move v8, v0

    .line 220
    .local v8, "size":I
    :goto_1
    const-string/jumbo v4, "QuickConnectWifiManager"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v9, "scanResults size = "

    aput-object v9, v5, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lbmc$5;->a:Lbmc;

    invoke-static {v0}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v0

    iget-object v2, v0, Lbni;->b:Ljava/lang/String;

    .line 222
    .local v2, "ssid":Ljava/lang/String;
    iget-object v0, p0, Lbmc$5;->a:Lbmc;

    invoke-static {v0}, Lbmc;->b(Lbmc;)Lbni;

    move-result-object v0

    iget-object v3, v0, Lbni;->c:Ljava/lang/String;

    .line 223
    .local v3, "psk":Ljava/lang/String;
    const/4 v6, 0x0

    .line 224
    .local v6, "isFound":Z
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 226
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    const/4 v6, 0x1

    .line 228
    const-string/jumbo v0, "1"

    invoke-static {v0}, Lbmb;->b(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lbmc$5;->a:Lbmc;

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lbmc;->a(Lbmc;Landroid/net/wifi/ScanResult;Ljava/lang/String;Ljava/lang/String;J)V

    .line 234
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_4
    if-nez v6, :cond_0

    .line 235
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v4, p0, Lbmc$5;->a:Lbmc;

    invoke-static {v4}, Lbmc;->i(Lbmc;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v10, 0x64

    invoke-virtual {v0, v4, v10, v11}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 219
    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "psk":Ljava/lang/String;
    .end local v6    # "isFound":Z
    .end local v8    # "size":I
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1
.end method
